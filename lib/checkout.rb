require_relative 'item'
require_relative 'shop'


class Checkout 

attr_reader :receipt, :bill

  def initialize 
    @receipt = []
  end

  def scan(item, quantity = 1)
    @receipt << { item: item, quantity: quantity }
  end


  # def scan(basket)
  #   sum = 0
  #   @basket.each { |item| item.price += sum }
  # end

   def return_item_price(item)
    "£#{item.price}"
  end



end

