require "pry"
class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name=name
    end

    def add_song(name)
        name.artist=self
    end

    def self.all
        @@all
    end


    def add_song_by_name(name)
        new = Song.new(name)
        new.artist=self
       # @@all << name
    end

    def songs
        #binding.pry
        @@all.select{|song| song.artist==self}
    end

    def self.song_count
        @@all.count
    end
        

end