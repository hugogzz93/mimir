class Weight < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user, dependent: :destroy

  def self.label
    "Kg."
  end
  
end
