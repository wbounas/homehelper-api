class ChangeEstTimeToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :est_time, :integer
  end
end
