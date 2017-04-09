class Weight < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user

  def self.label
    'Kg.'
  end
end
