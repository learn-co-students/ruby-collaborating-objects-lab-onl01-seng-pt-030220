# require "pry"
class  MP3Importer

    attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
  songfiles = Dir.glob("#{path}/*.mp3")
  @files = songfiles.map{|file|file.gsub("#{path}/", "")}

  end

  def import
    files.each{|file|Song.new_by_filename(file)}
  end

end
