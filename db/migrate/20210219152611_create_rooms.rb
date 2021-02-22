class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.float :price
      t.string :room_number
      t.string :room_type
      t.boolean :ac
      t.boolean :active

      t.timestamps
    end
  end
end
