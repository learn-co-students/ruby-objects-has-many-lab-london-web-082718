class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    # @artist = {} # empty object - can be represented by {}  OR NOT NEEDED AT ALL
    # objects are represented by {}, but not
    # object is an instance of a class -
    # think about what gets returned when there's an ID etc.
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist  # if artist exists, then return
      self.artist.name
    else
      nil
    end
  end



end
