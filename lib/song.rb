require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  extend Memorable::ClassMethods
include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

 
end
