class Artist
  attr_accessor :name
@@all =[]

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
  song.artist = self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist_inst = nil
    @@all.collect do |song|
      if name == song.name
        artist_inst = song
      else
        artist_inst = self.new(name)
      end
    end
    artist_inst
  end

    def print_songs
      @songs.each do |song|
      puts song.name
    end
  end
end
