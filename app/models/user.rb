class User < ApplicationRecord
  has_many :itineraries, dependent: :destroy
  #has_many :chatrooms, through: :messages
  has_one_attached :avatar
  has_many :favorites, dependent: :destroy
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatrooms, :foreign_key => :sender_id
end
