class Product
  attr_reader :amount, :price

  def initialize(params)
    @amount = params[:amount]
    @price = params[:price]
  end

  def to_s
    "#{@price} руб. (осталось #{@amount})"
  end
end