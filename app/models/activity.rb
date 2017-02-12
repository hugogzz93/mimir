class Activity < ApplicationRecord
  include Valued
  acts_as_paranoid
  belongs_to :user, dependent: :destroy

  def value
    # time in hours
    (self.end - self.start) / 60 / 60
  end

  def self.label
    "Duration"
  end
end
