class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs #need @ before songs here, or rspec runs long loop... why?
  end

  def add_song(song)
    songs << song #don't need the @ before songs here
  end

  def artists
    #self.songs.collect do |song| <<<--- this works for the line below as well
    songs.collect do |song| #don't need the @ before songs here
      song.artist
    end
  end

end
