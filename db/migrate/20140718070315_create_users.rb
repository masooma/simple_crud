class CreateUsers < ActiveRecord::Migration
  
  def up
    create_table :users do |t|
	t.column "first_name", :string, :limit => 20
	t.string "last_name", :limit => 20
	t.string "email", :null => false
	t.string "password", :limit => 16, :default => " "
    
    #t.datetime "created_at"
    #t.datetime "updated_at"      the replacement of these two commands is written below them
    t.timestamps
    end
  end

  def down
  	drop_table :users
  end

end
