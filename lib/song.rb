require 'pry'

class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.new_by_filename(filename)
        #artist_name, song_name, genre = filename.split(" - ") can't work out how to do it this way
        song = filename.split(" - ")[1]
        artist = filename.split(" - ")[0]
        new_song = self.new(song)
        new_song.artist = Artist.new(artist)
        #binding.pry
        new_song.artist.songs << new_song
        new_song
    end 

    def artist=(artist)
       @artist = artist
    end 

    def artist_name=(name)
        a = Artist.find_or_create_by_name(name) 
        self.artist = a
    end 

end 
#binding.pry