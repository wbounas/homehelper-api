class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :size, :notes, :completed, :priority
  has_many :tasks
  has_one :user
end
