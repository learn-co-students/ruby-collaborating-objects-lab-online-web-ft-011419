require "pry"

class Artist 
  attr_accessor :name 
  
  @@all = []
 
  def initialize(name) 
    @name = name 
    @songs = []
   
    
  end 

  def add_song(name)
    
    @songs << name
    #binding.pry 
  end
  
  def songs
    @songs
   # binding.pry
  end 
  
  def save 
    @@all << self
   # binding.pry
  end 
  
   def self.all 
     @@all 
   end 
   
  def self.find_or_create_by_name(name) 
    artist = @@all.find{|artist| artist.name == name} 
    if artist.nil?
      artist = self.new(name)
      artist.save
      artist
    else
      artist
    end
  
  end 
  def print_songs
   songs.each{|song| puts song.name}
    
   #binding.pry
  end 
  
  
  
  
end 