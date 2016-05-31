class AddNameDescriptionToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :title, :string
    add_column :pickups, :description, :text
  end
end
