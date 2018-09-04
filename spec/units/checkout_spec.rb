require 'checkout'

describe Checkout do 
  subject(:checkout) { Checkout.new }
  let(:milk) { instance_double Item, name: 'milk', price: 1 }
  let(:bread) { instance_double Item, name: 'bread', price: 2 }

  describe '#scan' do 
    it 'adds an item from the basket to the bill' do 
      subject.scan(milk)
      expect(subject.bill).to include (milk)
    end
  end


end
