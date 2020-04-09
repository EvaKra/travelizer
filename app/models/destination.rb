class Destination < ApplicationRecord
    belongs_to :itinerary
    geocoded_by :city
    after_validation :geocode, if: :will_save_change_to_city?
end
