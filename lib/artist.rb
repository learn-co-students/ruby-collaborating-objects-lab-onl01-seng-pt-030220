require "pry"
require_relative "./song"
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
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
  # binding.pry

  def self.find_or_create_by_name(artist_name)
    if self.all.find {|each_artist| each_artist.name == artist_name}
      self.all.find {|each_artist| each_artist.name == artist_name}
    else
      artist = self.new(artist_name)
      artist
    end
  end

  def print_songs
    songs.each do |song|
    puts song.name
  end

  end

end
