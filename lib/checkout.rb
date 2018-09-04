require_relative 'shop'

class Checkout 
attr_reader :bill

  def initialize 
    @bill = []
  end

  def scan(item)
    @bill << item
  end  


end

