class Task < ApplicationRecord
  enum status: [ :pending, :in_progress, :done ]
  include Valued

  def value
    self.class.where(status: :done, date: self.date).count
  end
  
  def self.label
    "Completed"
  end
end
