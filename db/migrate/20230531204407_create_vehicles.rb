class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :picture
      t.text :description
      t.decimal :price
      t.string :brand
      t.date :year
      t.string :color
      t.string :registration_plate
      t.bigint :accidents

      t.timestamps
    end
  end
end
