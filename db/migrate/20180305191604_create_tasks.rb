class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :priority
      t.string :difficulty
      t.string :description
      t.integer :est_time
      t.string :req_tools
      t.string :notes
      t.boolean :completed

      t.timestamps
    end
  end
end
