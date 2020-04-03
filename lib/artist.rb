require 'pry'

class Artist 
  
  attr_accessor :name 
  
  
  
  def initialize(name)
    @name = name
  
    @@all = []
  end
  
  
  def self.all 
    artist = Artist.new(name)
    artist.name = self
    @@all << artist
    binding.pry
  end
  
  def add_song
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name
    
  end

  def print_songs
    Song.all.artist.name
  end
  
end