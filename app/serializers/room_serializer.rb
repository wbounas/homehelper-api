class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :size, :notes, :completed, :priority, :tasks
  has_many :tasks
  has_one :user

  def tasks
    object.tasks.map { |task| task.id }
  end
end
