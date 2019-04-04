#Build the to_param method inside your module and use the include keyword to include the Paramable module in both the Song and Artist class. Once you get your tests passing again, go ahead and delete the commented-out to_param method from the Song and Artist classes.

#Important! Remember to add require_relative '../lib/concerns/paramable' to your environment file before running any tests.

module Paramable

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end

end
