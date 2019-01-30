
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
    artist = @@all.find do |a|
      name == a.name
    end
      artist || Artist.new(name)
  end  

 
 
  def print_songs 
    @songs.each do |s|
      puts s.name
    end  
  end  
  
end  
    

