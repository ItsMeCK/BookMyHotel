class HomeController < ApplicationController
	def dashboard
		@income = Booking.get_month_income
	end
end
