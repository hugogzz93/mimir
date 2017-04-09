class Money < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user, dependent: :destroy
  has_many :tag_relations, as: :taggable
  has_many :tags, through: :tag_relations

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

    def get_total_per_tag_for_user(user)
      query = "SELECT ttrm.name, sum(ttrm.value) 
                from (( tags t join tag_relations tr on t.id = tag_id ) as ttr 
                join money m on m.id = ttr.taggable_id) as ttrm 
                join users u on ttrm.user_id = u.id 
                where u.id = #{user.id} 
                group by ttrm.name;"
      return ActiveRecord::Base.connection.execute(query)
    end

  end
end
