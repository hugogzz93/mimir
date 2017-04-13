class BodyStatistic < ApplicationRecord
	include Valued
	acts_as_paranoid
	belongs_to :user
	class << self
		def label
			'Body Statistics'
		end

		def chart_datasets(objects, options)
			[{
				label: 'Fat %',
				data: objects.map(&:fat_percentage),
				backgroundColor: 'rgba(81, 157, 178,0.1)',
        borderColor: '#519D9E'
			},{
				label: 'Water %',
				data: objects.map(&:water_percentage),
				backgroundColor: 'rgba(81, 157, 178,0.1)',
	      borderColor: '#519D9E'
			},{
				label: 'Muscle %',
				data: objects.map(&:muscle_percentage),
				backgroundColor: 'rgba(229,58,64,0.3)',
        borderColor: '#E53A40'
			}]
				
		end
	end
end
