class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        file_array = Dir.entries(self.path)
        file_array.select {|filename| filename.include?(".mp3")}
    end

    def import
        files.each do |filename|
            Song.new_by_filename(filename)
        end
    end

end