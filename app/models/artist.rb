class Artist
  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
        artist_painting = Painting.all.select do |piece|
        piece.artist == self 
      end
        artist_painting.map do |piece|
        piece.artist
      end
  end
  
  def galleries
        paintings_in_gallery = Gallery.all.select do |each_piece|
        each_piece.artist == self
      end
        paintings_in_gallery.map do |piece|
        piece.name 
      end 
  end

  def cities
      paintings_in_cities = Gallery.all.select do |each_piece|
      each_piece.artist == self
    end 
      paintings_in_cities.map do |piece|
      piece.city
  end 
end 

     def self.total_experience
        totalyears = @@all.map do |artist| 
          artist.years_experience
        end
        totalyears.inject(:+)
    end 

    def self.most_prolific
      # Returns an instance of the artist with the highest amount of paintings per year of experience.

    end  
end

