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
    @@all.select do |artist|
      if artist.name == artist_name
        artist
      else
        new_artist = Artist.new(artist_name)
        new_artist
      end
    end
  end

  def print_songs
  end

end
