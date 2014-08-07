class SectionEdit < ActiveRecord::Base
	belongs_to :sections
	belongs_to :editors, :class_name => "AdminUser", :foreign_key => "admin_user_id"
end
