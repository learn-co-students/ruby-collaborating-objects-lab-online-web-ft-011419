class Song
  
attr_accessor :name, :artist

@@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  #def artist(artist_name)
    #Artist.all.find { |artist| artist == artist_name }
  # end
  
  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song.name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    song.artist = Artist.new(artist_name)
    song.artist.add_song(song)
    song
  end
  
  def self.all
    @@all
  end

end