class Accommodation < ApplicationRecord
    belongs_to :destination
    has_many_attached :photos

    validates :name, presence: true
    validates :accommodation_type, presence: true
    
end
