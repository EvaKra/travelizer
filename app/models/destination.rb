class Destination < ApplicationRecord
    has_many :itinerary_destinations, dependent: :destroy
    has_many :itineraries, through: :itinerary_destinations 
end
