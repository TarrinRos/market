class Basket
  attr_reader :final_price, :basket

  def initialize(product)
    @basket = []

    @final_price = count_final_price
  end

  def add_product!(product)
    @basket << product
  end

  def count_final_price
    @basket.map { |product| product.price }.sum
  end

  def return_boughted_list
    @basket.each { |product| product}
  end
end