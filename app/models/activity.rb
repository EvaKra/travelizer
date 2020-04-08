class Activity < ApplicationRecord
    has_many :itinerary_activities, dependent: :destroy
    has_many :itineraries, through: :itinerary_activities
end
