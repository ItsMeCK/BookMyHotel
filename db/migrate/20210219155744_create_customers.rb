class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.date :birthdate
      t.string :address

      t.timestamps
    end
  end
end
