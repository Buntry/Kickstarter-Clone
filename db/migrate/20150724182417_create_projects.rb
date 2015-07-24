class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :name
      t.integer :owner_id #ACTUALLY OWNER ID
      t.text :description
      t.float :goal
      t.float :amount
      t.boolean :past_goal
    end
  end
  
  def down
    drop_table :projects
  end
end
