class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.boolean :done, default: false
      t.integer :priority
      t.integer :project_id
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
