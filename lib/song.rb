

class Song

    attr_accessor :artist, :genre, :name

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
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
        @@genres
    end

    def self.artists
        @@artists
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    
        # with #tally
        # @@genres.tally
      end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_eight_problems = Song.new("98 Problems", "Jay-Y", "R&B")
ninety_seven_problems = Song.new("97 Problems", "Jay-X", "hip-hop")

puts ninety_nine_problems.artist
puts ninety_nine_problems.genre
puts ninety_nine_problems.name

puts Song.count
