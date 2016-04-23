class Product < ActiveRecord::Base

	# satisfy test
	def to_param
		"#{id}-#{name.parameterize}"
	end
end
