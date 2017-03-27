class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs #need @ before songs here, or rspec runs long loop... why?
  end

  def add_song(song)
    songs << song #each song instance gets saved to @songs... (#don't need @ before songs here)
    song.artist = self #and each song instance belongs to that song's artist.
  end


  def genres
    #self.songs.collect do |song|
    ###above is how the lesson had it, the self before songs is being made explicit in the line above, but the line below works too:
    songs.collect do |song| #don't need @ before songs here
      song.genre
    end
  end

end
