require 'pry'
class Song

   attr_accessor :name,:artist

     @@all =[]
     def initialize(name)
       @name = name
       @artist =artist
       @@all << self
     end

     def self.all
       @@all
     end

     def artist_name=(artistname)
         self.artist = Artist.find_or_create_by_name(artistname)
         self.artist.add_song(self)
        # binding.pry
     end

     def self.new_by_filename(file)
         file = file.split(' - ')
         song = file[1]
         artist = file[0]
        # binding.pry
         new_song_inst = Song.new(song)
         new_song_inst.artist_name = artist
         new_song_inst
         #binding.pry
     end

end
