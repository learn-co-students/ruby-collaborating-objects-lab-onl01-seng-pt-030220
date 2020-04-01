class Artist

    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end 
    def self.all 
        @@all
    end 
    def add_song(song)
        @songs << song
    end
    def self.find_or_create_by_name(artists_name)
        located_artist = self.all.detect {|artist| artist.name == artists_name}
        if located_artist
            located_artist
        else
            new_artist = self.new(artists_name)
        end 
    end 
    def print_songs
        @songs.each do |song|
            puts song.name
        end 
    end 
end