require_relative 'shop'

class Checkout 

attr_reader :receipt, :bill

  def initialize 
    @receipt = []
    @bill = []
  end

  def scan(item)
    @receipt << item
  end  




end

