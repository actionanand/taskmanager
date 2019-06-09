class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :p_name
      t.string :p_discription
      t.timestamps
    end
  end
end
