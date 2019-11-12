class Genre
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
    @songs = []
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
    new_genre = Genre.new(name)
    new_genre.save
  end
  
  def songs
    Song.all { |song| song.genre == self }
  end

  def artists
    songs.map(&:artist)
  end

  def add_song(song)
    songs << song
  end
  
end