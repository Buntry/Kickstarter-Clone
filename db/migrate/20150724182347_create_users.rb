class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :bio
      t.string :email
      t.string :full_name
      t.float :wallet
    end
  end

  def down
    drop_table :users
  end
end
