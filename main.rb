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

  collection.to_a.each_with_index { |item, index| puts "#{index + 1}. #{item}" }

  puts "0. Выход"
  puts "============================="
  puts

  customer_choice = STDIN.gets.to_i

  if customer_choice > 0
    customer_choice -= 1

    # Продукт выбранный пользователем
    chosen_product = collection.return_chosen_product(customer_choice)

    if chosen_product.amount > 0
      # Уменьшает количество выбранного товара на 1
      chosen_product.decrease_amount_by_one!

      puts "Вы выбрали #{chosen_product}"

      # Добавляет товар в корзину покупателя
      basket.add_product!(chosen_product)
    else
      puts "Такой товар на складе закончился"
    end

    puts "В вашей корзине товаров на сумму: #{basket.count_final_price} eur."
  else
    puts "Вы купили:"
    puts
    puts basket.return_purchased_list
    puts "С вас: #{basket.count_final_price} eur."
    puts
    puts "Спасибо за покупку!"

    exit
  end
end
