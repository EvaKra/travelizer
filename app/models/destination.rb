class Destination < ApplicationRecord
    belongs_to :itinerary
    has_many :accommodations, dependent: :destroy
    has_many :activities, dependent: :destroy
    has_many :transports, dependent: :destroy
    geocoded_by :city
    after_validation :geocode, if: :will_save_change_to_city?
end
