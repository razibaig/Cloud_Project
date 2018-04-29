class Room < ApplicationRecord
	belongs_to :hotel
	has_many :roompictures, dependent: :delete_all
	validates_numericality_of :floor, less_than_or_equal_to: 10, greater_than: 0
	validates_numericality_of :number_of_beds, less_than_or_equal_to: 5, greater_than: 0
	has_many :users, through: :bookings	
end
