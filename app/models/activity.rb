class Activity < ApplicationRecord
    belongs_to :destination
    has_many_attached :photos
    validates :name, presence: true
    validates :description, presence: true
end
