class FarmSerializer < ActiveModel::Serializer
  has_one :region
  has_many :farmers
  attributes :id, :region_id, :name, :coord, :area
end
