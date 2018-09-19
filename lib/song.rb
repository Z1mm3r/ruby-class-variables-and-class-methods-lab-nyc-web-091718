require 'pry'

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name,artist,genre)
  @name = name
  @artist = artist
  @genre = genre
  @@genres << @genre
  @@count += 1
  @@artists << @artist

end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.get_uniqe_count(array_in)

  return_hash = {}
  return_hash = array_in.group_by{|element| element}.map {
    |genre, occurences| [genre, occurences.length]}.to_h
  return_hash
end


def self.genre_count
  self.get_uniqe_count(@@genres)
end

def self.artist_count
  self.get_uniqe_count(@@artists)
end


end # end of song class
