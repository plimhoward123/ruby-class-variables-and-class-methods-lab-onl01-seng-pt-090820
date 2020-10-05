class Song
  @@album_count = 0
  attr_accessor :song,:artist,:genre

  def initialize(song,artist,genre)
    @song = song
    @artist = artist
    @genre = genre
  end

  def self.count
    @@album_count
  end
end
