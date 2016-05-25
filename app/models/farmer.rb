class Farmer < ActiveRecord::Base
  belongs_to :farm
  belongs_to :manager

  validates_uniqueness_of :phone, scope: :manager_id
end
