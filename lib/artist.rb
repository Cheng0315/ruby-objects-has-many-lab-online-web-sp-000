class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
    Song.artist = self.name
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    Song.artist = self.name
  end
end
