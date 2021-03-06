class Song
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}
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
    gnd = []
    @@genres.each do |val|
      if !gnd.include?(val)
        gnd << val
      end
    end
    return gnd
  end

  def self.artist_count
    @@artists.each do |val|
      if (@@artist_count.key?(val))
        @@artist_count.update(@@artist_count) {|key,value| value +=1 }
      else
        @@artist_count[val] = 1
      end
    end
    return @@artist_count
  end

  def self.genre_count
    @@genres.each do |val|
      if (@@genre_count.key?(val))
        @@genre_count.update(@@genre_count) {|key,value| value +=1}
      else
        @@genre_count[val] = 1
      end
    end
    return @@genre_count
  end
end
