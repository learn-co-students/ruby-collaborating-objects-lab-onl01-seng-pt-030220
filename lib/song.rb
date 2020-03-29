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

    def self.new_by_filename(filename)
        song = filename.split(" - ")[1]
        new_song = self.new(song)
        new_song.artist_name(filename.split(" - ")[0])
        new_song

        #binding.pry
    end

    def artist_name(artist_name)
        @artist = Artist.find_or_create_by_name(artist_name)
        @artist.add_song(self)
        
        # if (self.artist.nil?)
        #     self.artist = Artist.new(name)
        # else
        #     self.artist_name = name
        # end
#binding.pry
       
    end
end