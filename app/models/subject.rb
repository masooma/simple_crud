class Subject < ActiveRecord::Base

	has_many(:pages)
	
	visi_lam = lambda { where(visible: true)  }
	# we can use brackets with the method
	scope(:visible, visi_lam)
	# we can use methods without brackets
	scope :invisible, lambda { where(visible: false) }
	scope :search, lambda { |query|
		where(["name LIKE ?", "%#{query}%"]) 
	}
end
