require 'pry'
class Artist 
attr_reader :name, :import 

@@all = [] 

def self.all 
@@all    
end

def self.find_or_create_by_name(import)

found_artist = @@all.find{|a| a.name == import} 

if found_artist 
    found_artist
else 
    self.new(import)
end 

end


def initialize(name)
    @name = name 
    @@all << self 
    @songs = [] 
    # binding.pry
end

def name=(name)
    @name = name 
    # binding.pry
end

def add_song(song) 
@songs << song 
song.artist = self 
end

def songs 
@songs
# binding.pry
end

def print_songs 
    @songs.each do |a|
        puts a.name 
    end
end

end
