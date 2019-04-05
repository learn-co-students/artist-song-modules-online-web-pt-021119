#require 'pry'
require_relative './song.rb'
#require_relative './lib/concerns/memorable.rb'

class Artist
  extend Memorable::ClassMethods  #ATTENTION: use keyword `extend` when the module is a ClassMethods
  include Memorable::InstanceMethods #ATTENTION: use keyword `include` when the module is a InstanceMethods
  include Paramable::InstanceMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super #tells this method to look up its behavior in the method of the same name that lives in the parent/super, class.
    @songs = []
  end

#  def self.find_by_name(name)
#    @@artists.detect{|a| a.name == name}
#  end

  def self.all
    @@artists
  end

#  def self.reset_all
#    self.all.clear
#  end

#  def self.count
#    self.all.count
#  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
