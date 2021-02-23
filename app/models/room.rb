class Room < ApplicationRecord
	has_many_attached :images


	def self.get_available_rooms(check_in=nil, check_out=nil)
		all
	end

end
