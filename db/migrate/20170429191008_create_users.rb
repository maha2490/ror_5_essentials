class CreateUsers < ActiveRecord::Migration[5.0]
  def up
     create_table :users do |t| # yields table as var t
      # below are both formats of how to define cols
      # type 1
      t.column "first_name", :string, :limit => 25
      # type 2
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      t.timestamps
      # rails convention that includes + auto updates cols:
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end
end
