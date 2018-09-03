class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title

    # OR NOT NEEDED AT ALL!!!!!!!!!!!!!!!
    # author = {}    - this is implicit
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author # if artist exists, then return
      self.author.name
    else
      nil
    end
  end

end
