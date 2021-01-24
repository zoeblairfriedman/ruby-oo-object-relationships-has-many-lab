

class Song
    attr_accessor :name, :artist, :genre

@@all = []

def initialize(name)
    self.name = name
    @@all << self
end


def self.all
    @@all
end

def artist_name

    if self.artist != nil
        self.artist.name
    end
end


end