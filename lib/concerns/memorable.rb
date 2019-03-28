module Memorable

	module ClassMethods
		# self omitted when defining class methods in modules
		def reset_all
			self.all.clear
		end

		# self omitted when defining class methods in modules
		def count
			self.all.size
		end
	end

	module InstanceMethods
		def initialize
			self.class.all << self
		end
	end

end