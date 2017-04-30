class AlterUsers < ActiveRecord::Migration[5.0]
  def up
    rename_table("users", "admin_users")
    add_column("admin_users", "username", :string, :limit => 25, :after => "email") # all dbs don't use after. if not, it will be ignored
    change_column("admin_users", "email", :string, :limit => 100)
    rename_column("admin_users", "password", "hashed_password")
    puts "** adding an index **"
    add_index("admin_users", "username")
  end

  def down
    # reversed order + operation of above
    remove_index("admin_users", "username")
    rename_column("admin_users", "hashed_password", "password")
    change_column("admin_users", "email", :string, :default => '', :null => false)
    remove_column("admin_users", "username")
    rename_table("admin_users", "users")
  end

end
