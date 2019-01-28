class MP3Importer
  
  attr_reader :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    # @files ||= Dir.glob("#{@path}/*.mp3").collect{ |f| f.gsub("#{@path}/", "") }
    @files ||= Dir.chdir(@path) { Dir.glob("*.mp3") }
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end
  
end