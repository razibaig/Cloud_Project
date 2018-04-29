class Room < ApplicationRecord
	belongs_to :hotel
	has_many :roompictures, dependent: :delete_all
	has_many :users, through: :bookings	
end
