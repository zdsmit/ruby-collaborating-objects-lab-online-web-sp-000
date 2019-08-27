class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").select{ |e| e.gsub("#{path}/", "") }
  end

  def import
    @files ||= files.each {|filename|Song.new_by_filename(filename)}
  end

end
