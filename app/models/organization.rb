class Organization < ActiveRecord::Base
  belongs_to  :user
  has_many    :managers
  has_many    :regions

  validates :name, presence: true, uniqueness: true
end
