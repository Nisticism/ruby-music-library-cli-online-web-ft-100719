class Song
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist = nil)
    @name = name 
    @artist = artist
  end
  
  def save 
    @@all << self 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    new_song = Song.new(name)
    @@all << new_song
  end
  
end