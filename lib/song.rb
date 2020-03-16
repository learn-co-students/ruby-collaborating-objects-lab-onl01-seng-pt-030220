class Song
  attr_accessor :artist, :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def self.new_by_filename(file)
    arr = file.split(" - ")
    song = self.new(arr[1])
    song.artist = Artist.new(arr[0])
    song
  end

def self.find(para)
  self.all.find{|artist| }
end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
