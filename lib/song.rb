require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def self.new_by_filename(file)
      song = file.split(" - ")[1]
      artist = file.split(" - ")[0]

      new_song = self.new(song)
      new_song.artist_name = artist

      return new_song
    end

    def artist_name= (name)
      # turn the artist name as a string into an Artist object
      # get the instance of the Artist class that represent that artist
      # either we have to create that artist instance, OR it already exists
      # and we have to find that artist instance
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    end

end
