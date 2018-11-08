require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/disk'
require_relative 'lib/product_collection'
require_relative 'lib/basket'

current_path = File.dirname(__FILE__)
collection = ProductCollection.from_dir(current_path)
basket = Basket.new(nil)

loop do
  puts
  puts "Что хотите купить?"
  puts "============================="
  puts

  collection.sort!

  collection.collection.each_with_index { |item, index| puts "#{index + 1}. #{item}" }

  puts "0. Выход"
  puts "============================="
  puts
  customer_choice = STDIN.gets.to_i

  if customer_choice > 0
    customer_choice -= 1
  else
    abort 'Спасибо за покупку'
  end

  #
  chosen_product = collection.collection[customer_choice]

  puts "Вы выбрали #{chosen_product}"

  # Уменьшает количество выбранного товара на 1
  chosen_product.decrease_amount_by_one!

  # Добавляет товар в корзину покупателя
  basket.add_product!(chosen_product)

  puts "В вашей корзине товаров на сумму: #{basket.count_final_price} eur."
end
