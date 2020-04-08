class Artist
  @@all = []
  attr_reader :name
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
    Song.all.select {|x| x.artist == self}
  end
  def self.find_or_create_by_name(name)
      
    if  self.all.select { |x| x.name == name}.length == 0
      self.new(name)
    else
      self.all.select { |x| 
      if x.name == name
        return x
      end
      }
    end
      
      
      
  end
  def print_songs
    self.songs.each {|x| puts x.name}
  end
end