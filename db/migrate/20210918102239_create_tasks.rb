class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :status
      t.string :type
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
