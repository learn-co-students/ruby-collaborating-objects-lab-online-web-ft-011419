require 'pry'

class Artist 
  
  attr_accessor :name
  
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all
    @@all
  end  
  
  def add_song(song)
    @songs << song
  end  
  
  def save 
    @@all << self
  end  
  
  def self.find_or_create_by_name(name) 
    if self.artist.nil?
      self.artist = Artist.new(name)
    else 
      self.artist.name = name
    end 
    artist.name
  end  
 
 
  def print_songs 
    
  
  end  
    
  
end  