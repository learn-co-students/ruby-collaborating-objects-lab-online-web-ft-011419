class MP3Importer 
  
  attr_accessor :path 

  def initialize(path)
    @path = path
  end  
  
  def files 
    Dir.glob(path)
  end  
  
  def import(list_of_filenames)
    list_of_filenames.each {|filename| Song.new_by_filename(filename) }
    parts = list_of_filenames.split(" - ")
    artist = parts[0]
    song_name = parts[1].gsub(".mp3", "")
    
  end
  
  
end  



    
    