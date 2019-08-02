class User < ApplicationRecord
 has_many :accommodations, foreign_key: 'admin_id', class_name: "Accommodation"
 has_many :reservations, foreign_key: 'guest_id', class_name: "Reservation"
	validates :email, 
	  presence: true,
	  uniqueness: true
end
