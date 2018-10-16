require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/disk'
require_relative 'lib/product_collection'

current_path = File.dirname(__FILE__)
collection = ProductCollection.from_dir(current_path)

puts "Вот какие товары у нас есть:"
puts "============================="
puts

puts collection.to_a

puts "============================="
puts

option = "price"

puts collection.sort

begin
  Product.from_file("#{current_path}/data/films/01.txt")
rescue NotImplementedError
  puts "Вы пытаетесь вызвать пустой метод"
end


