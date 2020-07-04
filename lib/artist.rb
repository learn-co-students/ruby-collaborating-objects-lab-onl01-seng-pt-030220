require 'pry'
class Artist

attr_accessor :name,:songs

  @@all = []

  def initialize(name)
     @name=name
     @songs = []
     save
  end

   def self.all
      @@all
   end

   def save
      @@all << self
   end

  def add_song(song)
      song.artist = self
     @songs << song
  end

  def songs
    @songs
  end

  def find_song
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.find_or_create_by_name(name)
     if self.find_artist(name)
        self.find_artist(name)
     else
        Artist.new(name)
     end
  end

  def self.find_artist(name)
    @@all.detect do |art|
       art.name == name
    end
  end

  def print_songs
    find_song.each do |song|
      puts song.name
    end
  end
end
