class Banner < ApplicationRecord
  include Valued

  def value
    0
  end
  
  def self.label
    "Duration"
  end
end
