require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

movie = Movie.new(amount: 15, price: 25)

puts "Фильм 'Леон' стоимость #{movie.price}"