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
    file = filename.split(" - ")
    song_title = file[1]
    name_of_artist = file[0]
    song = Song.new(song_title)
    song.artist_name=(name_of_artist)
    song
  end

  def artist_name=(artist)
     newartist = Artist.find_or_create_by_name(artist)
     newartist.add_song(self)
  end
end

# my_song = Song.new_by_filename(saved_music)
