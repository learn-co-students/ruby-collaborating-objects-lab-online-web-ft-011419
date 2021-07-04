require 'pry'
class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    
    @name = name
   
  end
  
  def self.new_by_filename(filename)
    
    artist_song = filename.split(' - ')
    artist = Artist.new(artist_song[0]) 
    song = self.new(artist_song[1])
   
    song.artist = artist.save
    artist.add_song(song)
    song 
    
  end
  
 
 
end
  