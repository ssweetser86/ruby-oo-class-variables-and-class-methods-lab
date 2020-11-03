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
        list = {}
        @@genres.each do |g|
            list[g] == nil ? list[g] = 1 : list[g] += 1
        end
        return list
    end

    def self.artist_count
        list = {}
        @@artists.each do |a|
            list[a] == nil ? list[a] = 1 : list[a] += 1
        end
        return list
    end

end