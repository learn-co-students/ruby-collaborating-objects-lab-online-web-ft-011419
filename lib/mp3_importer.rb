class MP3Importer 
  
  attr_accessor :path 

  def initialize(path)
    @path = path
  end  
  
  def files(files) 
    Dir.glob('./spec/fixtures/mp3s')
    parts = files.split(" - ")
    artist = parts[0]
    song_name = parts[1].gsub(".mp3", "")
  end  
  
  def import(list_of_filenames)
    list_of_filenames.each {|filename| Song.new_by_filename(filename)} 
  end
  
  
end  



    
    