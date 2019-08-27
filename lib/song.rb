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
    artist, title = filename.split(" - ")
    new_song = self.new(title)
    new_song.artist.name = artist
    new_song
  end

end
