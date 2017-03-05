class User < ApplicationRecord
  acts_as_paranoid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :weights, dependent: :destroy
  has_many :money, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :events, dependent: :destroy

  def events_for(range)
  	Event.events_for({user_id: id}, Time.zone.now, range)
  end
end
