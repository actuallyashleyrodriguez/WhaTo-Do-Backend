class CreateReminders < ActiveRecord::Migration[6.0]
  def change
    create_table :reminders do |t|
      t.string :category
      t.datetime :start
      t.datetime :end
      t.string :description
      t.integer :task_id

      t.timestamps
    end
  end
end
