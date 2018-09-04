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

  def total 
    return 0 if @receipt.length == 0
    sum = @receipt.map { |line| line[:item].price * line[:quantity] }.inject('+')
    puts "Total: £" + sum.to_s
  end

  def print_receipt
    @receipt.each do |item| 
    puts "#{item[:quantity]} x #{item[:item].name}" 
    end
  end


  private

  def return_item_price(item)
    "£#{item.price}"
  end


end