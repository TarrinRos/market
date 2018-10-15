require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

current_path = File.dirname(__FILE__)

movie = Movie.from_file("#{current_path}/data/films/01.txt")

book = Book.from_file("#{current_path}/data/books/01.txt")

puts "Вот какие товары у нас есть:"
puts "============================="
puts

puts movie

puts book

begin
  Product.from_file("#{current_path}/data/films/01.txt")
rescue NotImplementedError
  puts "Вы пытаетесь вызвать пустой метод"
end
