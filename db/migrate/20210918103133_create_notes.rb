class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :description
      t.integer :task_id
      t.integer :reminder_id

      t.timestamps
    end
  end
end
