class CreateDonorships < ActiveRecord::Migration
   def up
        create_table :donorships do |t|
             t.integer :user_id
             t.integer :project_id
        end
    end
    
    def down
      drop_table :donorships
    end
end
