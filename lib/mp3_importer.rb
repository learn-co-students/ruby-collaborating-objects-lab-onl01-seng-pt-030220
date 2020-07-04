require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
   file=Dir.entries(@path)
    file.select do |i|
        i.include?("mp3")
    end
  end

  def import

    files.each do |file1|      
      Song.new_by_filename(file1)
    end

  end

end
