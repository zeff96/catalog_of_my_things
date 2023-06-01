require_relative '../lib/item'

describe Item do
  before(:each) do
    @item = Item.new('2005-10-15')
  end

  context 'item class test' do
    it 'be an instance of Item' do
      expect(@item).to be_an_instance_of Item
    end

    it 'move_to_archive to eq "true"' do
      expect(@item.move_to_archive).to be_truthy
    end

    it 'return true if publish date is older than 10yrs' do
      expect(@item.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be_truthy
    end
  end
end
