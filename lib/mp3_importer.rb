require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(file_path)
        @path = file_path
    end

    def files
        search=@path+"/**/*.mp3"
        files = Dir[search]

        files.map do |file|
            file.split("./"+@path).reject(&:empty?)
            
           #binding.pry
        end
    end

    def import
        Song.new_by_filename(
            files.each do |file_name|
            end
        )   
    end
end

#binding.pry