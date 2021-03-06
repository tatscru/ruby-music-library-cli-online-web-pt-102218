class Genre 
  extend Concerns::Findable
  
  attr_accessor :name
  
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
    self 
  end 
  
  def self.create(name)
    self.new(name).save
  end 
  
  def songs 
    @songs 
  end 
  
  def artists
   self.songs.collect {|song| song.artist}.uniq
  # create a new array of ARTISTS. genre has many artists through songs 
  end 
end 