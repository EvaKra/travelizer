class Transport < ApplicationRecord
    has_many :itinerary_transports, dependent: :destroy
    has_many :itineraries, through: :itinerary_transports
end
