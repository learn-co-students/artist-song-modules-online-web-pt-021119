#Once you define the two class methods mentioned above inside of the Memorable module, use the extend keyword to extend those methods, as class methods, into both the Artist and Song class. Refer to the previous code along exercise for help. Remember that the self keyword is omitted when defining class methods inside modules. The extend keyword is responsible for defining the method as a class method vs. an instance method (which would use the include keyword).

module Memorable

  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end

end
