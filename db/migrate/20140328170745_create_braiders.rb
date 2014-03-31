class CreateBraiders < ActiveRecord::Migration
  def change
    create_table :braiders do |t|
      t.string :name
      t.integer :number_of_carriers
      t.integer :carrier_speed
      t.integer :carrier_diameter

      t.timestamps
    end
  end
end
