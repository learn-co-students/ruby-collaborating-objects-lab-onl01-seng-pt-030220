class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end
  def  save
     @@all << self
   end

  def self.find(para)
    self.all.find{|artist| artist.name == para}
  end
  def self.find_or_create_by_name(para)
   self.find(para) ?  self.find(para) : self.new(para)
  end
  def songs
    Song.all.find_all{|song| song.artist == self}
  end
    def print_songs
      songs.each do |song|
        puts song.name
      end
  end
end
