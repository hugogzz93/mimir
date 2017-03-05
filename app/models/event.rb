class Event < ApplicationRecord
  include Valued
  belongs_to :user
  class << self
    def events_for(scope, date, range)
      by_date(date, range).where scope
    end

    def label
      'Duration'
    end
  end

  def value
    (end_time - start_time) / 60
  end

  def day
    date.day
  end

  def week_day
    date.strftime('%A')
  end
end
