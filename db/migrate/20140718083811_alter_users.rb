class AlterUsers < ActiveRecord::Migration
  def up
  	add_column("users", "new_column", :string, :limit => 30)
  	rename_column("users", "new_column", "admin_user")
  	change_column("users", "email", :string, :limit => 50)
  	remove_column("users", "admin_user")
  end

  def down
  	add_column("users", "admin_user")
  	change_column("users", "email", :null => false)
  	rename_column("users", "admin_user", "new_column")
  	remove_column("users", "new_column")
  end
end
