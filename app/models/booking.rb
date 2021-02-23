class Booking < ApplicationRecord
	belongs_to :customer
	belongs_to :room
	has_many_attached :images

	scope :from_this_month, lambda { where("check_in > ? AND check_in < ?", Time.now.beginning_of_month, Time.now.end_of_month).order("check_in desc") }


	def self.search(search)
		if search
			result = nil
			rooms = Room.where(room_number: search).pluck(:id)
		    if rooms.any?
		    puts "here"
		      return where(room_id: rooms)
		    end

		    search_date = search.to_date rescue nil
		    checkindata = where(check_in: search_date).or(Booking.where(check_out: search_date))

		    if checkindata.any?
		    	checkindata
		    else
		    	all
		    end
		else
			all
		end
  	end

  	def self.current_bookings
  		Booking.where(status: 'CheckedIn')
  	end

  	def self.get_month_income(month=Time.now.strftime("%m"))
  		from_this_month.group(:check_in).sum(:price)
  	end

  	def self.get_years_income(month=Time.now.strftime("%m"))
  		# Booking.all.group_by { |m| m.created_at.beginning_of_month }.each.pluck(:price).sum
  	end
	
end
