class MP3Importer
  
  attr_accessor :path
  attr_reader :music_importer
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.children("#{@path}")
  end 
  
  def import
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end 
  
  
  
end 