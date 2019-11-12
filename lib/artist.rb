class Artist 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
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
  
  def self.create(name)
    new_artist = Artist.new(name)
    @@all << new_artist
  end
  
  def add_song(song)
    song.artist = self 
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map(&:genre)
  end
  
end