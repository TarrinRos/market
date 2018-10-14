class Product
  attr_accessor :amount, :price

  def initialize(params)
    @amount = params[:amount]
    @price = params[:price]
  end
end