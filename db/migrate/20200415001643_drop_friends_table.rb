class DropFriendsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :friends
  end
  
  def down
    ActiveRecord::IrreversibleMigration
  end
end
