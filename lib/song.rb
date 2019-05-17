require "pry"

class Song

    @@count = 0
    @@all = []
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist= artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
        @@all << self
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
        # create a new empty hash
        # pass genre and create has
        @@genres.each_with_object(Hash.new(0)) do |genre, hash| 
            # add to count for genre
            hash[genre] += 1
        end
    end

    def self.artist_count
        # create a new empty hash
        # pass artist and create has
        @@artists.each_with_object(Hash.new(0)) do |artist, hash| 
            # add to count for artist
            hash[artist] += 1
        end
    end

end

