class Artist 
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
  
  def self.create(artist_new)
    artist = self.new(artist_new)
    artist.save
    artist 
  end 
  
  def add_song(song)
    if song.include?(artist) = self 
    
  end 

  

    

end 