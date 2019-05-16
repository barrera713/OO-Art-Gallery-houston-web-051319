class Painting
  @@all = []
  attr_reader :title, :price, :artist

  def initialize(title, price, artist)
    @title = title
    @price = price
    @artist = artist
    @@all << self
  end

  def self.all 
    @@all
  end

end
