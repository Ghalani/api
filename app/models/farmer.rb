class Farmer < ActiveRecord::Base
  belongs_to :farm
  belongs_to :manager

  validates :farm_id, presence: true
  validates_presence_of :farm
  validates_uniqueness_of :phone, scope: :manager_id
  validates :phone,     presence: {message: 'Please provide a phone number'},
                    numericality: true,
                          length: { minimum: 10, maximum: 15 }
end
