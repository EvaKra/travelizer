class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :destinations, dependent: :destroy
  has_many :accommodations, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :transports, dependent: :destroy
  has_many_attached :photos
  #accepts_nested_attributes_for :destinations, reject_if: :all_blank, allow_destroy: true
  
end
