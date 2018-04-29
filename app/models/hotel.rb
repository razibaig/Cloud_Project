class Hotel < ApplicationRecord
	has_many :roooms
	ratyrate_rateable "ratings"
	has_many :reviews, dependent: :delete_all
end
