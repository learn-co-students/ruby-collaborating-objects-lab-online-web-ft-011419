class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    artist = Artist.new(filename.split(" - ")[0]).save
    song = self.new(title)
    song.artist = artist
    artist.add_song(song)
    song
  end
  
  def artist=(artist_object)
    @artist = artist_object
    @artist.add_song(self)
  end
  
end