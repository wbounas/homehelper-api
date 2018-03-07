class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :location
      t.integer :size
      t.references :tasks, foreign_key: true
      t.string :notes
      t.boolean :completed
      t.integer :priority
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
