class Accommodation < ApplicationRecord
    has_many :itinerary_accommodations, dependent: :destroy
    has_many :itineraries, through: :itinerary_accommodations
end
