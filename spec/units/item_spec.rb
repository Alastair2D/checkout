require 'item'

describe Item do 
  subject(:item) { Item.new('Pizza', 5) }

  describe '#price' do 
    it 'knows the current price of itself' do 
      expect(subject.price).to eq 5
    end
  end

end
