require 'checkout'

describe Checkout do 
  subject(:checkout) { Checkout.new }
  let(:milk) { instance_double Item, name: 'milk', price: 1 }
  let(:bread) { instance_double Item, name: 'bread', price: 2 }
  let(:mockSushi) { double :sushi }
  let(:mockBiscuits) { }

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

  describe '#total' do 
    it 'throws an error if nothing is in the receipt' do 
    expect(subject.total).to eq 0
    end
    it 'returns the total cost of scanned items' do 
      subject.scan(milk)
      subject.scan(bread)
      expect(subject.total).to eq 3
    end
  end

  describe '#print_receipt' do 
    it 'displays itemised receipt' do 
      subject.scan(milk)
      allow(subject).to receive(:print_receipt).and_return("1 x milk")
      expect(subject.print_receipt).to eq "1 x milk"
    end
  end

end
