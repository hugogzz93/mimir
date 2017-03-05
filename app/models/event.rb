class Event < ApplicationRecord
	belongs_to :user
	class << self
		def events_for(scope, date, range)
			by_date(date, range).where scope
		end
	end
end