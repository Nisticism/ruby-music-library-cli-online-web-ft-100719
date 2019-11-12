class Genre
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end
  
  def save 
    @@all << self 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    new_genre = Genre.new(name)
    @@all << new_genre
  end
  
end