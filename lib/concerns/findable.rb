module Findable

  module ClassMethods
	def find_by_name(name)
	   self.all.detect {|i| i.name == name }
	end
   end

end
