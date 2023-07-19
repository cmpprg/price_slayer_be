class CreatePlantVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_vendors do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :vendor, null: false, foreign_key: true
      t.decimal :price, precision: 5, scale: 2


      t.timestamps
    end
  end
end
