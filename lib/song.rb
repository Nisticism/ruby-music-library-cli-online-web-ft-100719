class Song
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    @artist = artist
    @genre = genre
  end
  
  def self.all
    @@all
  end
  
  def save 
    @@all << self 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name, artist = nil, genre = nil)
    new_song = Song.new(name, artist, genre)
    new_song.save
  end
  
end