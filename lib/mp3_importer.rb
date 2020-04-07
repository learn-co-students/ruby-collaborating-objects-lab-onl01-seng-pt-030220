require 'pry'

class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = files
  end
  
  
  def files
    file_names = Dir.children(@path)
  end
  
  def import
    @files.each {|file| Song.new_by_filename(files)}
  end
  
  
end