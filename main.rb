require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/disk'
require_relative 'lib/product_collection'
require_relative 'lib/basket'

current_path = File.dirname(__FILE__)
collection = ProductCollection.from_dir(current_path)

puts "Что хотите купить?"
puts "============================="
puts

collection.sort!

collection.collection.each_with_index {|item, index| puts "#{index + 1}. #{item}"}

puts "0. Выход"
puts "============================="
puts

begin
  Product.from_file("#{current_path}/data/films/01.txt")
rescue NotImplementedError
  puts "Вы пытаетесь вызвать пустой метод"
end

customer_choice = STDIN.gets.to_i

customer_choice -= 1

basket = Basket.new(collection.collection[customer_choice])

puts "Вы выбрали #{collection.collection[customer_choice]}"



