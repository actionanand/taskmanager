class CreateAssignTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_tasks do |t|
      t.integer :task_id
      t.integer :assignee_id
      t.integer :assigner_id
      t.integer :status,  default: 1
      t.timestamps
    end
  end
end
