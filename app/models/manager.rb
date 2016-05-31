class Manager < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :organization
  belongs_to  :region
  has_many    :farmers
  has_many    :drivers
  has_many    :pickups

  validates :user, presence: true
  validates :organization, presence: true
  validates :region, presence: true
  validates_uniqueness_of :user_id, scope: :region_id
end
