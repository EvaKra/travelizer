class ItineraryTransport < ApplicationRecord
  belongs_to :itinerary
  belongs_to :transport
end
