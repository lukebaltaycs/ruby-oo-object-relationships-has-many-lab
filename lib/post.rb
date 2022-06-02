class Post

    @@all = []

    attr_reader :title
    attr_accessor :author

    def initialize(name)
        @title=name
        Author.all << self
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.name
        else
            nil
        end

    end
end