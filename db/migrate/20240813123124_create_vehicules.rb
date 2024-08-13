class CreateVehicules < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicules do |t|
      t.string :address
      t.string :category
      t.string :brand
      t.string :model
      t.string :energy
      t.integer :capacity
      t.string :color
      t.integer :year
      t.string :license_plate
      t.integer :price_per_h
      t.integer :price_per_d
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
