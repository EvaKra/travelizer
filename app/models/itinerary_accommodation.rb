class ItineraryAccommodation < ApplicationRecord
  belongs_to :itinerary
  belongs_to :accommodation
end
