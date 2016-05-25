class FarmSerializer < ActiveModel::Serializer
  has_one :region
  attributes :id, :region_id, :name, :coord, :area
end
