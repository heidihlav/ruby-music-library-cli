class MusicImporter

    attr_accessor :path

    @@all = []

    def initialize(path)
      @path = path
      @@all << self
    end

    def files
      Dir.entries(path).delete_if {|file| file == "." || file == ".."}
    end

    def import
      files.each { |file| Song.create_from_filename(file)}
    end



end