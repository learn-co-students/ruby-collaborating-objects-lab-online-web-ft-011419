require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @mp3files = Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    @import_file = self.files
    @import_file.each {|song| Song.new_by_filename(song)}
  end

end
