class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find { |artist| artist.name == name }
    artist ? artist : self.new(name)
  end
  
  def print_songs
    self.songs.each{ |song| puts song.name}
  end
  
end