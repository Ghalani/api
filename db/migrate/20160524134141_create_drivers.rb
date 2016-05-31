class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.references  :manager
      t.string      :fname
      t.string      :lname
      t.string      :phone
      t.string      :country

      t.timestamps null: false
    end
  end
end
