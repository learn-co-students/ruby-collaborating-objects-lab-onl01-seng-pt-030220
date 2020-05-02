class Song
  attr_accessor :name, :artist, :artist_name
     @@all = []

  def initialize(attributes)
    @name = attributes
    @artist = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
   song = file_name.split(" - ")[1]
   artist = file_name.split(" - ")[0]
   new_song = self.new(song)
   artist = Artist.new(artist)
   artist.songs << new_song
   new_song.artist = artist
   new_song
 end

 def artist_name=(name)
  @artist = Artist.find_or_create_by_name(name)
 end

end
