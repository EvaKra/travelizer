class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :destinations, dependent: :destroy
  has_many :accommodations, through: :destinations
  has_many :activities, through: :destinations
  has_many :transports, through: :destinations
  has_many_attached :photos
  #accepts_nested_attributes_for :destinations, reject_if: :all_blank, allow_destroy: true
  # validates :name, presence: true
  # validates :duration, presence: true, numericality: { greater_than: 0 }
  # validates :summary, presence: true
  # validates :photos, presence: true
 

  validates_length_of :name, :maximum => 60

end