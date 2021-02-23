class AddDetailsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :details, :string
  end
end
