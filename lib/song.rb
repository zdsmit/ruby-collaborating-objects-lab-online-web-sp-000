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

  def new_by_filename(filename)
    true_name = filename.split(" - ")
    artist_name = true_name[0]
    song_name = true_name[1]

  end

end
