class Song
  @@count = 0
  @@artist_count = 0
  @@artists = []
  attr_accessor :artist,:genre,:name

  def initialize(name,artist,genre)
    @name = name
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
    @@artists<<artist
  end
  def self.artists
    @@artists
  end

end
