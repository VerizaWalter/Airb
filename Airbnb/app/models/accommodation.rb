class Accommodation < ApplicationRecord
  has_many :reservations
  belongs_to :city, class_name: "City"
  belongs_to :admin, class_name: "User"

	#validates :beds #length: { minimum: 1 },
	#validates :price 
	 #length: { minimum: 1 }
	#validates :description
     #presence: true
	 #length: { maximum: 140 }
	#validates :wifi
    # presence: true
end
