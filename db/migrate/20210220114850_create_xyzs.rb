class CreateXyzs < ActiveRecord::Migration[5.2]
  def change
    create_table :xyzs do |t|
      t.string :signature

      t.timestamps
    end
  end
end
