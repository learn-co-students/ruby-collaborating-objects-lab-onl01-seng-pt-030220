class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

#https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby
  def files
    @files = Dir.entries(@path).select {|song| song.end_with?(".mp3")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
