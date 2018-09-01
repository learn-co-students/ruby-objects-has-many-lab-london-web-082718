class Author

attr_accessor :title, :posts, :name

@@all = []

def initialize(name)
  @@all << self
  @name = name
  @posts = []
end

def author_name
if self.author
  self.author.name
else
  nil
end
end

def posts
  @posts
end

def add_post(post)
  @posts << post
  post.author = self
end

def add_post_by_title(post_title)
  post = Post.new(post_title)
  @posts << post
  post.author = self
end

def self.all
  @@all
end

def self.post_count
  Post.all.count
end

end
