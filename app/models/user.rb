class User < ActiveRecord::Base
  has_many  :organization
  has_many  :manager
end
