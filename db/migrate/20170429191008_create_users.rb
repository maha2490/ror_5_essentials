class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    # yields table as var t
    create_table :users do |t|
      # both formats are examples of how to define cols
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit =>

      t.timestamps
      # rails convention that includes + auto updates:
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end
end
