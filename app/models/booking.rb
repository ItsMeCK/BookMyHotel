class Booking < ApplicationRecord
	belongs_to :customer
	belongs_to :room
	has_many_attached :images

	
end
