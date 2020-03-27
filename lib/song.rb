require 'pry'
class Song

   attr_accessor :name,:artist
     @@all =[]
     def initialize(name)
       @name = name
       @artist =artist
       @@all << self
      # binding.pry
     end

     def self.all
       @@all
     end

     def self.new_by_filename(file)
         artist = file.split('-')[0]
         name = file.split('-')[1]
         name.grep(/\S/)
         new_song_inst = Song.new(name)
         new_song_inst.artist = artist
         new_song_inst
         #new_song_inst.name
         #binding.pry
     end


end
