class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :t_name
      t.string :t_discription
      t.integer :project_id
	  t.boolean :is_assigned,  default: false
      t.timestamps
    end
  end
end
