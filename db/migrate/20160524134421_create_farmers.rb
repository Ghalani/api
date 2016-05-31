class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.references :manager
      t.references :farm
      t.string :fname
      t.string :lname
      t.string :phone

      t.timestamps null: false
    end
  end
end
