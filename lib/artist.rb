require 'pry'

class Artist
  attr_accessor :name
@@all =[]
def initialize(name)
  @name = name
  @@all << self
end
def new_song(name, genre)
  Song.new(name, self, genre)

end


def songs
    Song.all.select do |a| a.artist == self
    end
end
    def genres
      songs.collect do |g| g.genre
      end
    end



  def self.all
    @@all
  end



end
