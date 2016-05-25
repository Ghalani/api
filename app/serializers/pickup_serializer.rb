class PickupSerializer < ActiveModel::Serializer
  attributes :id, :start_coord, :end_coord, :start_date_time, :delivery_date_time
end
