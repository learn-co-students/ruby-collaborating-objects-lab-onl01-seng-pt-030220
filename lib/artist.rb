class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs= []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name} || Artist.new(name)
    return artist
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end
  
end
