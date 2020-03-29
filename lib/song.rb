class Song 
    attr_accessor :name, :artist, :import
    @@all = [] 

    def self.new_by_filename(import)
        title = import.split("-")[1].strip 
        artist_from_file = import.split("-")[0].strip
        song = self.new(title)
        song.artist = Artist.find_or_create_by_name(artist_from_file) 
        song.artist.add_song(song)
        song
        # binding.pry 
    end

    def self.all 
        @@all 
    end

    def initialize(name)
        @name = name 
        @@all << self
    end
    
    def artist_name=(import)
    self.artist = Artist.find_or_create_by_name(import)
    end



end