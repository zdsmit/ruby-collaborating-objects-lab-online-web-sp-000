class Song
  attr_accessor :name, :artist
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

  def self.new_by_filename(filename)
    artist, name = filename.split(" - ")
    new_song = self.new(name)
    new_song.artist = artist
    new_song
  end

end
