class Artist 

attr_accessor :name, :songs 
attr_reader :song  

@@all = [ ]


def initialize(name)
  @name = name  
  @@all << self 
  @songs = [ ]       
end

def add_song(s)
    s.artist = self
end

def self.all 
    @@all 
end 

def self.find_by_name(name)
   Artist.all.find do |s|
    s.name == name 
   end 
end 

def self.create_by_name(name)
    artist  = Artist.new(name)
    return artist 
end 

def self.find_or_create_by_name(name)
     artist = self.find_by_name(name)
    if artist 
     return artist
    else
        artist = self.create_by_name(name)
    return artist 
    end 
end 

 def print_songs 
    @songs.each do |n| 
        puts n.name 
    end    
 end 


   




end