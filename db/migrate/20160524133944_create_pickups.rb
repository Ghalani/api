class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.references  :driver
      t.references  :manager
      t.decimal :start_coord, array: true, default: []
      t.decimal :end_coord, array: true, default: []
      t.integer :start_date_time
      t.integer :delivery_date_time

      t.timestamps null: false
    end
  end
end
