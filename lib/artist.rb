class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  # add_song:     Here, we use the self keyword to refer to the artist on which we are
  # calling this method. We call the #artist= method on the song that is
  # being passed in as an argument and set it equal to self––the artist.

  def add_song_by_name(name)

    # first need to create a song
    song = Song.new(name)
    @songs << song
    song.artist = self
    # use the logic of our original #add_song method, which adds a song to an
    # artist's collection and tells that song that it belongs to that particular artist.
    # But, we also create a new song using the name from the argument.
  end

  def self.song_count
    Song.all.count       # Song.all - refers to the @@all in the Song class
  end


end
