class Song
  @@all = []
  attr_reader :name, :artist
  def initialize(name)
    @name = name
    @@all << self
  end
  def name=(name)
    @name = name
  end
  def artist=(artist)
    @artist = artist
  end
  def self.all
    @@all
  end
  def self.new_by_filename(file)
  song = self.new(file.split(" - ")[1])
  song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
  song
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
      
  end
end