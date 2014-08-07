class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
    	t.string "first_name"
    	t.string "last_name"
    	t.string "user_id"
    end
  end
end
