class Artist
  attr_accessor :name, :songs
  @@all =  []
  
  
  def initialize(name)
    @songs = []
    @@all << self
    @name = name 
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self 
  end
  
  def self.all
     @@all 
   end
  
  def save
    self.class.all << self 
  end
  
  def find_or_create_by_name(artist)
    if artist == nil 
      artist = Artist.new(artist)
    else 
      artist
    end
  end
  
  def print_songs
   songs.each {|song| puts song.name } 
  end
 
end