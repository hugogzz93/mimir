class Activity < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user

  def value
    # time in hours
    (self.end - start) / 60 / 60
  end

  def self.label
    'Duration'
  end
end
