class Song 
  attr_accessor :title, :artist, :name
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename
    MP3importer.new(files)
  
  
  end 
    
  
  
end 