require 'pry'
class MP3Importer


attr_accessor :path

def initialize(path)
   @path = path 
end 



def import
    files.each do |f| 
        Song.new_by_filename(f) 
    end 
end


def files
    Dir.children('./spec/fixtures/mp3s')
end 


end 