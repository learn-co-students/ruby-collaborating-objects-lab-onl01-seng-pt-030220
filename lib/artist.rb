class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
        if self.all.select {|artist| artist.name == name}.first.nil?
            artist = self.new(name)
        else
            artist = self.all.select {|artist| artist.name == name}.first
        end
        artist
    end

    def print_songs
        songs = Song.all.select {|song| song.artist == self}
        songs.each do |song|
            puts "#{song.name}"
        end
    end
end
