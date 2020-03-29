class MP3Importer

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end


  def files
    Dir.chdir(@path) do |path|
      Dir.glob("*.mp3")
    end
  end








end
