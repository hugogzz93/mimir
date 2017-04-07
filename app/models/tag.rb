class Tag < ApplicationRecord
  acts_as_paranoid
  has_many :tag_relations

  validates :name, uniqueness: true

  class << self
  	def add_tags(object, tag_names)
  		tag_names.split(',').each do |tag|
  			add_tag object, tag
  		end
  	end

  	def add_tag(object, tag)
  		tag = Tag.find_or_create_by(name: tag)
  		object.tag_relations.create tag_id: tag.id
  	end
  end
end
