require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
   file=Dir.entries(@path)
    file.each do |i|
       if !i.include?("mp3")
          file.delete(i)
       end
    end
    file
  end

  def import

    files.each do |file1|       #files function will return file ,so we can do each for it
      Song.new_by_filename(file1)
    end
    
  end

end
