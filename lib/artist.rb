class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song|song.artist == self}
  end

  def find_or_create_by_name(artist_name)
    if @@all.include?(artist_name)
      artist_name
    else
      new_artist = Artist.new
      new_artist
    end
  end

  def print_songs
  end

end
