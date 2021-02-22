class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :room_id
      t.date :check_in
      t.date :check_out
      t.integer :number_of_people
      t.string :status

      t.timestamps
    end
  end
end
