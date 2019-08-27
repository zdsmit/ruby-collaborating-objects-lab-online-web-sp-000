class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob('#{path}/*.mp3').select{ |e| File.file? e }
  end

  def import
  end

end
