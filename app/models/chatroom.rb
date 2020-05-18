class Chatroom < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
    belongs_to :receiver, :foreign_key => :receiver_id, class_name: 'User'
    has_many :messages, dependent: :destroy
    has_many :users, through: :messages
    
    validates_uniqueness_of :sender_id, :scope => :receiver_id
    
# scope validation, checks whether chatroom exists between the two ids, ensures no duplicates
    scope :between, -> (sender_id,receiver_id) do
        where("(chatrooms.sender_id = ? AND chatrooms.receiver_id =?) OR (chatrooms.sender_id = ? AND chatrooms.receiver_id =?)", sender_id,receiver_id, receiver_id, sender_id)
        end
end
