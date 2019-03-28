module Findable

	# still a class method, no self
	def find_by_name(name)
		self.all.detect {|i| i.name == name }
	end

end