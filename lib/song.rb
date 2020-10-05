class Song
  @@count = 0
  @@artist_count = 0

  attr_accessor :song,:artist,:genre, :name

  def initialize(song,artist,genre)
    @song = song
    @artist = artist
    @genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end
  def self.artist_count
    @@artist_count
  end

  def self.artists=()
    @artists = []
  end
  def self.artists
    @artists
  end

end
