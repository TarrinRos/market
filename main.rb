require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

products = []

products << Movie.new(
  title: 'Леон',
  year: '1996',
  director: 'Люк Бессон',
  amount: 15,
  price: 25
)

products << Movie.new(
  title: 'The Hobbit',
  year: '2012',
  director: 'Питер Джексон',
  amount: 50,
  price: 30
)

products << Book.new(
  title: 'The Well-Grounded Rubyst',
  genre: 'IT',
  writer: 'David A. Black',
  amount: 3,
  price: 40
)


puts "Вот какие товары у нас есть:"
puts "============================="
puts

products.each { |product| puts product }
