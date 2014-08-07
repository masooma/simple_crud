class Section < ActiveRecord::Base
	belongs_to :pages
	has_many :section_edits
	has_many :editors, :class_name => "AdminUser", :through => :section_edits
end
