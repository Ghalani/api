class Farm < ActiveRecord::Base
  has_many :farmers
  belongs_to :region

  validates :name, presence: true, uniqueness: true
end
