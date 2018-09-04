require 'checkout'

describe Checkout do 
  subject(:checkout) { Checkout.new }
  let(:milk) { instance_double Item, name: 'milk', price: 1 }
  let(:bread) { instance_double Item, name: 'bread', price: 2 }

  describe '#scan' do 
    it 'adds an item to the receipt' do 
      subject.scan(milk)
      expect(subject.receipt).to eq [{item: milk, quantity: 1}]
    end
      it 'adds multiple items to the receipt' do 
      subject.scan(milk, 2)
      subject.scan(bread, 3)
      expect(subject.receipt).to eq [{item: milk, quantity: 2}, {item: bread, quantity: 3}]
    end
  end



  # describe '#total' do 
  #   it 'calculates the total cost' do 
  #     subject.scan(milk)
  #     subject.scan(bread)
  #     expect(subject.scan).to eq 3
  #   end
  # end

end
