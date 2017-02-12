class Money < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user, dependent: :destroy

  def self.label
    "Savings"
  end
  
  def value
    expense ? -1 * read_attribute(:value) : read_attribute(:value)
  end
end
