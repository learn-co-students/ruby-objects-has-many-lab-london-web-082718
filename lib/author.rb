require "pry"
class Author

 # @@song_count = 0
 @@authors = []

 attr_accessor :name, :posts

 def initialize(name)
   @name = name
   @posts = []
   @@authors << self
 end

 def name
   @name
 end

 def add_post(post)
   @posts << post
   post.author = self
 end

 def add_post_by_title(title)
   post = Post.new(title)
   post.author = self
   @posts << post 
 end

 def self.post_count
   Post.all.count
 end

end
