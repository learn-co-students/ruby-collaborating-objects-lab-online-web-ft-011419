
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
   Dir[@path+"/*.mp3"].map { |file| file.split("/").last } #matches all that
   #begin with the instancw path plus mp3 ending, then picks only the last
   #element because that is where the info is stored
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
