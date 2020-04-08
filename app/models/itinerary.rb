class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :itinerary_destinations, dependent: :destroy
  has_many :destinations, through: :itinerary_destinations
  has_many :itinerary_accommodations, dependent: :destroy
  has_many :accommodations, through: :itinerary_accommodations
  has_many :itinerary_activities, dependent: :destroy
  has_many :activities, through: :itinerary_activities
  has_many :itinerary_transports, dependent: :destroy
  has_many :transports, through: :itinerary_transports
  has_many_attached :photos
end
