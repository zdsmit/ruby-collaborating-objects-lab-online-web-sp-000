class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    Artist.all.select do |artist_name|
      if artist.name == artist
        self.artist = artist_name
      else
        new_artist = Artist.new(artist)
        new_artist = self.artist
      end
    end
  end

  def new_by_filename
  end

end
