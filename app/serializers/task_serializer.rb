class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :priority, :difficulty, :description, :est_time,
             :req_tools, :notes, :room_id, :completed
end
