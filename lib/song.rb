require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    #binding.pry
    @name = name
    @genre = genre
    genre.add_song(self) #a new song gets associated to a genre, and the given genre adds that song to its collection.
  end

end
