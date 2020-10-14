class Song 
  attr_accessor :name 
  attr_reader :artist, :genre 
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    self.artist = artist if artist 
    self.genre = genre if genre 
  end 
  
  def self.all 
    @@all
  end 
  
  def genre=(genre)
    @genre = genre
    
  end 
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self)
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
  def self.create(song_name)
    new_song = self.new(song_name)
    new_song.save
    new_song
  end 
  

end 