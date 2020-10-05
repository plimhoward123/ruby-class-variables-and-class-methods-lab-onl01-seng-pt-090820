class Song
  @@count = 0
  @@artist_count = 0
  @@artists = []
  @@genres = []
  attr_accessor :artist,:genre,:name

  def initialize(name,artist,genre)
    @name = name
    @genre = genre
    @artist = artist

    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end
  def self.artists
    clnd = []
    @@artists.each do |val|
      if !clnd.include?(val)
        clnd << val
      end
    end
    return clnd
  end

  def self.genres
    @@genres
  end

  def self.artist_count
    @@artist_count
  end

end
