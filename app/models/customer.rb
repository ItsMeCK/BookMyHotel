class Customer < ApplicationRecord
	has_many :bookings
	has_one_attached :avatar
	accepts_nested_attributes_for :bookings


	def self.search(search)
	    if search
	      where('name LIKE ? or email LIKE ? or mobile LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
	    else
	      all
	    end
  	end
end
