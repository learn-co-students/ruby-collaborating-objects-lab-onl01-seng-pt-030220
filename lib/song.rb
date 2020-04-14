class Song
  
  attr_accessor :name, :all, :artist
  attr_reader :filename, :artist_name
  
  @@all = [ ]
  
  def initialize(name)
    @artist
    @name = name
    @filename = filename
    @@all << self
  end 
  
  def artist_name=(artist_name)
    artist = Artist.all.find { |a| a.name == artist_name }
    @artist = artist ? artist : Artist.new(artist_name)
  end 
    
  
  def self.new_by_filename(filename)
    file_parts = filename.split(" - ")
    artist_name, song_name = file_parts[0], file_parts[1]
    new_artist, new_song = Artist.new(artist_name), self.new(song_name)
    new_song.artist = new_artist
    new_artist.add_song(new_song)
    new_song
  end 
  
  def self.all
    @@all
  end 
  
  
  
end 