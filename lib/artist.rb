class Artist
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end 
  end 
  
  def self.all 
    @@all
  end 
  
  def add_song(name)
    name.artist = self 
  end 
  
  def self.find_or_create_by_name(artist_name) 
    artist_found = self.all.find do |artist|
      artist.name == artist_name
    end 
    
    if artist_found 
      artist_found
    else 
      Artist.new(artist_name)
    end 
  end 
  
  def print_songs 
    found_song = Song.all.select do |song|
      song.artist == self 
    end 
    found_song.each do |song|
      puts song.name
    end 
  end 
  
end 