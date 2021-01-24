require 'pry'

class Artist
attr_accessor :name

def initialize(name)
    self.name = name
end

def songs
    Song.all.select {|songs| songs.artist == self}
end

def add_song(song)
    song.artist = self
end

def add_song_by_name(song_title_string)
    song = Song.new(song_title_string)
    song.artist = self
end

def self.song_count
    Song.all.count
end


end