class TagRelation < ApplicationRecord
	belongs_to :taggable, polymorphic: true
	belongs_to :tag
end
