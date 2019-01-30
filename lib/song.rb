class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.new_by_filename(filename)
    song.title = filename.split(" - ")[1]
    song.artist = filename.split(" -  ")[0]
    song
  end  
  
  def artist
    song.artist = artist
  end  
  
  def artist_name=(name)
    artist_name = artist.name
  end  
  
end  