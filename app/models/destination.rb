class Destination < ApplicationRecord
    belongs_to :itinerary
    has_many :accommodations, dependent: :destroy
    has_many :activities, dependent: :destroy
    has_many :transports, dependent: :destroy
    has_many_attached :photos
    geocoded_by :city
    after_validation :geocode, if: :will_save_change_to_city?
    validates :city, presence: true
    validates :country, presence: true
    validates :date, presence: true
    validates :description, presence: true
end
