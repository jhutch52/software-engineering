class CreateEvents < ActiveRecord::Migration[5.2]
  def up
    drop_table :events
  end
  
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.integer :length
      t.boolean :repeat_daily
      t.boolean :repeat_weekly

      t.timestamps
    end
  end
end
