class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []

  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
   @songs << song
  end
  
  def print_songs
    self.songs.each {|x| puts x.name}
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find {|x| x.name == name}
      self.all.find {|x| x.name == name}
    else
      newartist = self.new(name)
      newartist.save
      return newartist
    end
  end
  

end