class Gallery
  @@all = []
  attr_reader :name, :city, :paintings, :artist

  def initialize(name, city, artist, paintings)
    @name = name
    @city = city
    @paintings = paintings
    @artist = artist
    @@all << self
  end


  def self.all
    @@all 
  end

end
