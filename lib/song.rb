class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.split(" - ")
    new_song = self.new(artist_and_song[1])
    new_artist = Artist.new(artist_and_song[0])
    new_artist.save
    new_artist.add_song(new_song)
    new_song.artist = new_artist
    new_song
  end


end
