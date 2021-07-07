class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename(files)
    
    song_name = files.split(" - ")[1]
    song = self.new(song_name)
    artist_name = files.split(" - ")[0]
    call_artist = Artist.find_or_create_by_name(artist_name)
    song.artist =  call_artist
    call_artist.add_song(song)
    song
   # binding.pry
  end
    



 

end