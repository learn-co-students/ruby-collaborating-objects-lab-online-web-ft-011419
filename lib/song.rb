require 'pry'
class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(filename)
    # binding.pry
    artist_n_song = filename.split(" - ")
    song = self.new(artist_n_song[1])
    artist = Artist.new(artist_n_song[0])
    artist.save
    artist.add_song(song)
    song.artist = artist
    song
  end

end
