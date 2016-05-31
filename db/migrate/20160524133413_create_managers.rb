class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.references  :organization
      t.references  :user
      t.references  :region

      t.timestamps null: false
    end
  end
end
