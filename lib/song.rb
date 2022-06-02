
class Song

    @@all = []

    attr_reader :name
    attr_accessor :artist

    def initialize(name)
        @name=name
        Artist.all << self
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            self.artist.name
        else
            nil
        end
    end
end