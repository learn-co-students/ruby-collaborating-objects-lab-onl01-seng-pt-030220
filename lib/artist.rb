class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initalize(name)
    @name = name
    
  end
  
  
  def self.all 
    @@all << self
  end
  
  def add_song
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name
    
  end

  def print_songs
    Song.all.artist.name
  end
  
end