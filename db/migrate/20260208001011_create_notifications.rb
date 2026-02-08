class CreateNotifications < ActiveRecord::Migration[8.1]
  def change
    create_table :notifications do |t|
      t.integer :task_id
      t.string :event_type
      t.jsonb :data
      t.datetime :read_at

      t.timestamps
    end
  end
end
