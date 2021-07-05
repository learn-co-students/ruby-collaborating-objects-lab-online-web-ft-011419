class Song
attr_accessor :name , :artist

  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    a=file_name.split(" - ")

  artist =Artist.new(a[0])
  song = self.new (a[1])
  song.artist =artist.save
  artist.add_song(song)
  song
  end
end
