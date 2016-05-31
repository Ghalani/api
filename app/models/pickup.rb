class Pickup < ActiveRecord::Base
  belongs_to  :driver
  belongs_to  :manager

  validates :title, presence: true
  validates :description, presence: true
  validates_presence_of :driver
  validates_uniqueness_of :title, scope: :delivery_date_time,
                          message: "Pickup with similar title is still active"
end
