
class Author

    attr_reader :name

    @@all = []

    def initialize(name)
        @name=name
    end

    def posts
        @@all.select{|post| post.author == self}
    end
    
   def self.all
    @@all
   end

   def add_post(post)
    post.author=self
   end

   def add_post_by_title(title)
    new = Post.new(title)
    new.author=self
    #@@posts.detect{|post| post.title == name}.author = self
   end

   def self.post_count
    @@all.count
   end

end