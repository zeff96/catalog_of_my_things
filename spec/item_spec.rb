require_relative '../lib/item'

describe Item do
  before(:each) do
    @item = Item.new('2005-10-15')
  end

  context 'item class test' do
    it 'should be an instance of Item' do
      expect(@item).to be_an_instance_of Item
    end
  end
end