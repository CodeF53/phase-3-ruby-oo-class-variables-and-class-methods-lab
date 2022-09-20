class Song
    @@count=0
    @@artists={}
    @@genres={}
    attr_accessor :name, :artist, :genre
    def initialize title, artist, genre
        @name = title
        @artist = artist
        @genre = genre

        if @@artists.keys.include? artist
            @@artists[artist] = @@artists[artist] + 1
        else
            @@artists[artist] = 1
        end

        if @@genres.keys.include? genre
            @@genres[genre] = @@genres[genre] + 1
        else
            @@genres[genre] = 1
        end

        @@count += 1
    end

    def self.count
        @@count
    end
    def self.genres
        @@genres.keys
    end
    def self.genre_count
        @@genres
    end
    def self.artists
        @@artists.keys
    end
    def self.artist_count
        @@artists
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
diff = Song.new("something else", "Jay-Z", "rap")
pp Song.count
pp Song.genres
pp Song.genre_count
pp Song.artist_count