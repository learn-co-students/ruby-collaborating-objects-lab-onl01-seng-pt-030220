class Song 

attr_accessor :name, :artist 

@@all = [ ]

def initialize(name)
    @name = name 
    @@all << self 
end    

def name=(na)
    @name = na
end 

def artist=(a)
    @artist = a 
    @artist.songs << self 
end 


def self.all 
    @@all 
end 

def self.new_by_filename(fn)
   fn_arr = fn.split(" - ")
   artist_name = fn_arr[0]
   song_name = fn_arr[1] 
    song = Song.new(song_name)  
    a = Artist.new(artist_name)
    song.artist = a
    song
end 

def artist_name=(ar) #get a string from parse file name 
    a = Artist.find_or_create_by_name(ar)
    self.artist = a
end 






















end