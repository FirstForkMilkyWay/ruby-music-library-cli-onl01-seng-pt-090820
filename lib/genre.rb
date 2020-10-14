class Genre
  attr_accessor :name 
  attr_reader :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all 
    @@all
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(genre_new)
    artist = self.new(genre_new)
    artist.save
    artist 
  end 
  
  def artists 
    

end 