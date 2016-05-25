class Pickup < ActiveRecord::Base
  belongs_to  :driver
  belongs_to  :manager
end
