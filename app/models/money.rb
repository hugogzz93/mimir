class Money < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user, dependent: :destroy

  def self.label
    'Savings'
  end

  class << self
    def state
      Money.where(expense: false).map(&:value).reduce(:+) -
      Money.where(expense: true).map(&:value).reduce(:+)
    end

    def chart_datasets(objects)
      [{
        label: 'Income',
        data: objects.where(expense: false).map(&:value),
        backgroundColor: 'rgba(81, 157, 178,0.1)',
        borderColor: '#519D9E'
      }, {
        label: 'Expense',
        data: objects.where(expense: true).map(&:value),
        backgroundColor: 'rgba(229,58,64,0.3)',
        borderColor: '#E53A40'
      }]
    end
  end
end
