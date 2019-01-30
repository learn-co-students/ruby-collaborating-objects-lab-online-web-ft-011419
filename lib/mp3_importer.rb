class MP3Importer 
  
  def initialize
    Dir.entries("./spec/fixtures").select {|f| !File.directory? f}
  end  
  
  def import(list_of_filenames)
    list_of_filenames.each {|filename| Song.new_by_filename(filename) }
  end
  
  
end  