class CreateBraidConfigs < ActiveRecord::Migration
  def change
    create_table :braid_configs do |t|
      t.integer :braider_id
      t.integer :pinion_teeth
      t.integer :gear_teeth
      t.float :inches_per_minute
      t.float :feet_per_hour
      t.float :picks_per_inch

      t.timestamps
    end
  end
end
