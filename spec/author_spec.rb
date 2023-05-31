require_relative '../lib/author'
require_relative '../lib/game'

describe Author do
  before(:each) do
    @first_name = 'zeff'
    @last_name = 'adeka'
    @author = Author.new(@first_name, @last_name)
  end

  context 'Author class test' do
    it 'should be an instance of author class' do
      expect(@author).to be_an_instance_of(Author)
    end

    it 'should correct first_name' do
      expect(@author.first_name).to eq 'zeff'
    end

    it 'should correct last_name' do
      expect(@author.last_name).to eq 'adeka'
    end

    it 'should have empty list items' do
      expect(@author.items).to eq []
    end

    it 'should have an item after calling add_items' do
      item = Game.new('Yes', '2022-10-15')
      @author.add_items(item)

      expect(@author.items.length).to eq 1
    end

    it 'should change to hash format' do
      hash =  {
        first_name: @first_name,
        last_name: @last_name
      }

      expect(@author.to_hash).to eq hash
    end
  end
end
