class Driver < ActiveRecord::Base
  belongs_to :manager
  has_many :pickups

  validates :fname, presence: true
  validates :lname, presence: true
  validates :phone, presence: true
  validates :country, presence: true
  validates :manager, presence: true
  validates_uniqueness_of :phone, scope: :manager_id
end
