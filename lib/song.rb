require 'pry'

class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.new_by_filename(file_name)
    artist_and_song = file_name.split(" - ")
    artist = Artist.new(artist_and_song[0])
    song = self.new(artist_and_song[1])
    song.artist = artist
    artist.add_song(song)
    song

  end  
  
end