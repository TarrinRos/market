class Product
  attr_accessor :amount, :price

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def self.from_file(current_path)
    raise NotImplementedError
  end

  def decrease_amount_by_one!
    @amount -= 1
  end

  def to_s
    "цена: #{@price} eur. (осталось #{@amount})"
  end
end