class Food < ApplicationRecord
  acts_as_paranoid

  def self.label
    'Registered'
  end

  def value
    self.class.all.count
  end
end
