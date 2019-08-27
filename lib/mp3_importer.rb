class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob('path/**/*').select{ |e| File.file? e }
  end

  def import
  end

end
