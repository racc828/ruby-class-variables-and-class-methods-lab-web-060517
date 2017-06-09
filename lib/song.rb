require "pry"
class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :genre, :artist, :count

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre_list, genre_count|
      if genre_count.keys.include?(genre_list)
        genre_count[genre_list] = genre_count[genre_list] += 1
      else
        genre_count[genre_list] = 1
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist_list, artist_count|
      if artist_count.keys.include?(artist_list)
        artist_count[artist_list] = artist_count[artist_list] += 1
      else
        artist_count[artist_list] = 1
      end
    end
  end



end
