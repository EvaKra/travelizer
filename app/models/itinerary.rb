class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :destinations, dependent: :destroy
  has_many :accommodations, through: :destinations
  has_many :activities, through: :destinations
  has_many :transports, through: :destinations
  has_many_attached :photos
  #accepts_nested_attributes_for :destinations, reject_if: :all_blank, allow_destroy: true
  validates_length_of :name, :maximum => 60
  
end
