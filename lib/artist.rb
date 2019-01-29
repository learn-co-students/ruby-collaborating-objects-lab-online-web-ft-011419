class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    # self.save
  end
  
  def save
    @@all << self
    self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
  
  def self.find_or_create_by_name(artist_name)
    
    artist = self.all.detect { |instance| instance.name == artist_name }
    artist || Artist.new(artist_name)
    
    # if (self.all.detect { |instance| instance.name = artist_name }.nil?)
    #   artist = Artist.new(artist_name)
    # else
    #   self.all.detect { |instance| instance.name = artist_name }
    # end
  end
  
  def self.all
    @@all
  end
  
end