class Basket
  attr_reader :final_price

  def initialize(product)
    @basket = []
    @basket << product

    @final_price = 0
  end

  def count_final_price
    @basket.each { |item| @final_price + item.price }
  end
end