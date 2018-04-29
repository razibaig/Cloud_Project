class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ratyrate_rater
  has_many :reviews, dependent: :delete_all
  has_one :profile, dependent: :delete

  has_many :rooms, through: :bookings
end
