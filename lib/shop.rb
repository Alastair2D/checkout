require_relative 'item'

class Shop

  attr_reader :basket

  def initialize
    @basket = []
  end

  def add(item, quantity = 1)
    @basket.push({ item: item, quantity: quantity })
  end

  def list_basket
    @basket.each do |item| 
      puts "#{item[:quantity]} x #{item[:item].name}" 
    end
  end

end
