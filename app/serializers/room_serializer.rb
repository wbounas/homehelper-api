class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :size, :notes, :completed, :priority
  has_one :tasks
  has_one :user
end
