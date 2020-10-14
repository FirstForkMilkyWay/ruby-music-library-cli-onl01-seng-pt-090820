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
    song.artist = self unless song.artist == self
    @songs << song unless @songs.include?(song)
  end 
  
  def genres 
    self.songs.collect{|song| song.genre}.uniq
  end 

  

    

end 