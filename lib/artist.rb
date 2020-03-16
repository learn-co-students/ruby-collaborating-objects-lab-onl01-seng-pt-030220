class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    save
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
  #  song.artist = self
    @songs << song
  end
  def  save
     @@all << self
   end

  def self.find(para)
    self.all.find{|artist| artist.name == para}
  end
  def self.find_or_create_by_name(para)
    if self.find(para)
        self.find(para)
    else
      test = self.new(para)
      @@all << test
      test
    end
  end
  def print_songs
    songs.each do |song|
      puts song.name
  end
end
end
