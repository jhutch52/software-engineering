class DropEventsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :events
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end