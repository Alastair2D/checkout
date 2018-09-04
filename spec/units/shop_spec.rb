require 'shop'

describe Shop do 
  subject(:shop) { Shop.new }
  let(:milk) { instance_double Item, name: 'milk', price: 1 }

  describe '#basket' do 
    it 'defaults with an empty basket' do 
      expect(subject.basket).to be_empty
    end
  end

  describe '#add' do 
    it 'adds an item to the basket' do 
      subject.add(milk)
      expect(subject.basket).to include milk
    end
  end

end