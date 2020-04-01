require 'pry'
require 'pathname'
class MP3Importer

    attr_accessor :path, :files
    
    def initialize(path)
        @path = path 
    end
    def files
        @files = Dir.entries(path).grep(/.*\.mp3/)
       # binding.pry
    end 
    def import 
        files.each {|file| Song.new_by_filename(file)}
        #File.(path)
        #Pathname.new('/opt/local/bin/ruby').basename
        #binding.pry
    end 
end 
#binding.pry 