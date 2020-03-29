require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(new_name)
    @name = new_name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self  
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def self.find_or_create_by_name(name)
    artist_exists = @@all.find { |artist| artist.name == name}
    bindind.pry
    if artist_exists
      artist_exists
    else
      Artist.new(name)
    end
  end

  def print_songs
    Song.all.select do |song|
      song.name == self
    end
  end

end