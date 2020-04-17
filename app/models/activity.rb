class Activity < ApplicationRecord
    belongs_to :destination
    has_many_attached :photos
end
