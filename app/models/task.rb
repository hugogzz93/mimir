class Task < ApplicationRecord
  enum status: [ :pending, :in_progress, :done ]
  include Valued

  def value
    self.class.where(status: :done, date: self.date).count
  end

  class << self
	  def label
	    "Completed"
	  end

	  def tasks_for(date, scope)
      where(date: date.method("beginning_of_#{scope}").call()..
                         date.method("end_of_#{scope}").call())
	  end
  end
  
end
