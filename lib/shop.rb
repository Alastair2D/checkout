require_relative 'item'

class Shop

  attr_reader :basket

  def initialize
    @basket = []
  end

  def add(item, quantity = 1)
    @basket << item
  end
 

end
