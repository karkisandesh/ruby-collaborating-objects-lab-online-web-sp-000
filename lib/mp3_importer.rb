class MP3Importer
  attr_accessor :filenames
  
  def initialize(filenames)
    @filenames = filenames 
  end
  
  def files
    Dir.entries(filenames)
  end
  
  def import
    filenames.each { |filename| Song.filenames(filenames) }
  end
  
end