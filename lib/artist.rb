require 'pry'
class Artist

attr_accessor :name

  @@all = []

  def initialize(name)
     @name=name
     @songs = []
  end

   def save
      @@all << self
   end

   def self.all
      @@all
   end

  def add_song(song)
      @songs << song
      song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)

     if self.find_artist(name)
        self.find_artist(name)
     else
        newart=Artist.new(name)
        newart.save
        newart
     end
  end

  def self.find_artist(name)
    @@all.detect do |art|
       art.name == name
    end

  end


  def print_songs
      @songs.each do |song|
          puts song.name
      end
  end

end
