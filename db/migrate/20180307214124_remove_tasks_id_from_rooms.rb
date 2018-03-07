class RemoveTasksIdFromRooms < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :tasks_id
  end
end
