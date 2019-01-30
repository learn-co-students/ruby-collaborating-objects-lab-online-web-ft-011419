class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    song_array = file_name[0..-5].split(' - ')
    new_song = self.new(song_array[1])
    new_song.genre = song_array[2]
    artist = Artist.find_or_create_by_name(song_array[0])
    artist.add_song(new_song)
    new_song
  end
end
