class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob('#{path}/*.mp3').select{ |e| gsub("#{path}/", "") }
  end

  def import
  end

end
