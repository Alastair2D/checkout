require_relative 'item'

class Shop

  attr_reader :basket

  def initialize
    @basket = []
  end

  def add(item)
    @basket << item 
  end
 

end
