require 'pry'
class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    
    @name = name
  
    @songs = []
    
   
    
  end
  
  def add_song(song)
    
    @songs << song
    
    
  end
  
  def self.find_or_create_by_name(name)
    
   
     artist = @@all.find do |a| 
       
       a.name == name
       
     end
   
      artist || Artist.new(name) 
   
    
  end
  
  def save
    
    @@all << self
    self
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def print_songs
    

    @songs.each {|s| puts s.name}
   
    
  end
    
  
end