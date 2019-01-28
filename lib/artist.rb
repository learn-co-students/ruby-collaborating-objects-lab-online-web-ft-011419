require "pry"

class Artist
  attr_accessor :name

  @@all = []

  def initialize(artist_name)
    @name = artist_name
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
    artist_instance = nil
    @@all.collect do |song|
      if name == song.name
        artist_instance = song
      else
        artist_instance = self.new(name)
      end
    end
    artist_instance
  end

  def print_songs
    printed_songs = ""
    @@all.each do |song|
      printed_songs += song.name + "\n"
      binding.pry

    end
    printed_songs
  end

end
