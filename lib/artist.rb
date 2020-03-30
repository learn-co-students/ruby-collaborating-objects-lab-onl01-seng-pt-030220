require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(name)
    @name = name
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
    artist = @@all.find { |artist| artist.name == name}
    if artist
      artist
    else
      Artist.new(name)
    end
  end

  def print_songs
    songs.each { |song| puts song.name}
    # Song.all.each do |song|
    #   if song.artist == self
    #     puts song.name
    #   end
    # end
  end

end