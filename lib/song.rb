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
        song = self.new(song)
        song.artist = filename.split(" - ")[0]
        song
    end

    def artist_name(name)
        if self.artist.nil?
            self.artist = Artist.new(name)
        else
            self.artist.name = name
        end
    end
end