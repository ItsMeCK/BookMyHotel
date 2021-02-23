class ChangeCheckinToBookings < ActiveRecord::Migration[5.2]
  def change
  	change_column :bookings, :check_in, :datetime
  	change_column :bookings, :check_out, :datetime
  end
end
