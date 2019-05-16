require_relative '../config/environment.rb'

marrio = Artist.new("Marrio", 3)
carlos = Artist.new("Carlos", 10)


painting1 = Painting.new("Baker", 500, marrio)
painting2 = Painting.new("Girl", 300, marrio)
painting3 = Painting.new("Zero", 250, carlos)
painting4 = Painting.new("Element", 150, carlos)
painting5 = Painting.new("I win", 150, marrio)


gall1 = Gallery.new("Fine Art", "lubbock", carlos, painting3)
gall1 = Gallery.new("Fine Art", "lubbock", marrio, painting1)
gall2 = Gallery.new("High Art", "Baton Rogue", carlos, painting4)
gall2 = Gallery.new("High Art", "Baton Rogue", marrio, painting2)
gall2 = Gallery.new("High Art", "Baton Rogue", marrio, painting5)

binding.pry

puts "Bob Ross rules."