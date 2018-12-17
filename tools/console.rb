require_relative '../config/environment.rb'


tate = Gallery.new('Tate Modern', 'London')
tretyakov = Gallery.new('Tretyakov', 'Moscow')
louvre = Gallery.new('Louvre', 'Paris')
hermitage = Gallery.new('Hermitage', 'St Petersburg')

picasso = Artist.new('Picasso', 40)
malevich = Artist.new('Malevich', 25)
matisse = Artist.new('Matisse', 30)
hockney = Artist.new('Hockney', 50)

weeping_woman = Painting.new('The Weeping Woman', 15000000, hermitage, picasso)
black_square = Painting.new('Black Square', 8000000, tretyakov, malevich)
snail = Painting.new('The Snail', 12000000, louvre, matisse)
portrait_of_an_artist = Painting.new('Portrait of an Artist', 70000000, tate, hockney)
dream = Painting.new('The Dream', 25000000, tate, picasso)



binding.pry

puts "Bob Ross rules."
