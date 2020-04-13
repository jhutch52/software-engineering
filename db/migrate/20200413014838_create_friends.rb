class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :email
      t.boolean :accepted

      t.timestamps
    end
    add_index :friends, :email, unique: true
  end
end
