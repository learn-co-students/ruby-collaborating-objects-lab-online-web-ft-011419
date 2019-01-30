class Artist 
  
  attr_accessor :name  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end  
  
  def add_song(song)
    song.artist = self
    @songs = song
  end  
  
  def save 
    @@all << self
  end  
  
  def self.find_or_create_by_name(name) 
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else 
      self.artist.name = name
    end 
  end  
      
 
 
  def print_songs 
    @songs.select {|song| print song}
    end  
  end  
    
  
end  