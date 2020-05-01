class Transport < ApplicationRecord
    belongs_to :destination
    has_many_attached :photos
    # validates :transport_type, presence: true
    # validates :description, presence: true
    # validates :start_location, presence: true
    # validates :end_location, presence: true
end
