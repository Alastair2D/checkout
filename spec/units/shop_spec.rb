require 'shop'

describe Shop do 
  subject(:shop) { Shop.new }
  let(:milk) { instance_double Item, name: 'milk', price: 1 }
  let(:bread) { instance_double Item, name: 'bread', price: 2 }

  describe '#basket' do 
    it 'defaults with an empty basket' do 
      expect(subject.basket).to be_empty
    end
  end

  describe '#add' do 
    it 'adds an item to the basket' do 
      subject.add(milk)
      expect(subject.basket).to eq [{item: milk, quantity: 1}]
    end
    it 'adds multiple items to the basket' do 
      subject.add(milk, 2)
      subject.add(bread, 3)
      expect(subject.basket).to eq [{item: milk, quantity: 2}, {item: bread, quantity: 3}]
    end
  end

end