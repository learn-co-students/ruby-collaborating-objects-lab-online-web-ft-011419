require 'pry'
class MP3Importer
attr_reader :path
  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.chdir(@path) do
      #binding.pry
      Dir.glob('*.mp3')
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
