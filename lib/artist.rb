require 'pry'
class Artist


attr_accessor :name, :song_count, :songs

@@count_songs = 0

def initialize(name)
  @name = name
  @songs = []
end

def self.songs
  @songs
end

def add_song(song)
  self.songs << song
  song.artist = self
end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  songs << song
  song.artist = self
end

def self.song_count
  Song.all.count
end

end
