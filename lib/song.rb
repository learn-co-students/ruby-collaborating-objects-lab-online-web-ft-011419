require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    #"Michael Jackson - Balck or White - Pop.mp3"
    artist_and_song = file_name.split(" - ")
    artist = Artist.new(artist_and_song[0])
    song = self.new(artist_and_song[1])
    song.artist = artist.save
    artist.add_song(song)
    song
  end
end
