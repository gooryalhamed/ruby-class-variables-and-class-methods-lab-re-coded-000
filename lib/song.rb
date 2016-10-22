class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres =[]
  @@artists =[]
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.genres
    @@genres.uniq!
  end
  def self.artists
    @@artists.uniq!
  end
  #   @@genres= [rap, pop, rap]
  def self.genre_count
    genre_hash ={}
    @@genres.each do |genre|
      if genre_hash.key?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
      genre_hash
  end

  def self.artist_count
    artist_hash ={}
    @@artists.each do |artist|
      if artist_hash.key?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
      artist_hash
  end
end #end class
