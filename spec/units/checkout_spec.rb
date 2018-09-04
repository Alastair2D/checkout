require 'checkout'

describe Checkout do 
  subject(:checkout) { Checkout.new }
  let(:milk) { instance_double Item, name: 'milk', price: 1 }
  let(:bread) { instance_double Item, name: 'bread', price: 2 }

  describe '#scan' do 
    it 'adds an item from the basket to the receipt' do 
      subject.scan(milk)
      expect(subject.receipt).to include (milk)
    end
  end

  describe '#total' do 
    # it 'calculates the total cost' do 
    #   subject.scan(milk)
    #   subject.scan(bread)
    #   expect(subject.)
  end

end
