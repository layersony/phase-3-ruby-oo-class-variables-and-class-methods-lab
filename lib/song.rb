require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end 

  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genreCount = {}

    @@genres.each do |item|
      if genreCount[item]
        genreCount[item] += 1
      else
        genreCount[item] = 1
      end
    end 
    return genreCount
  end 

  def self.artist_count
    artistCount = {}
    @@artists.each do |item|
      if artistCount[item]
        artistCount[item] += 1
      else
        artistCount[item] = 1
      end
    end
    return artistCount 
  end 

end 

