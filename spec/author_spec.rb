require_relative '../lib/author'
require_relative '../lib/game'


describe Author do
  context 'Author class test' do
    author = Author.new('zeff', 'adeka')

    it 'should be an instance of author class' do
      expect(author).to be_an_instance_of(Author)
    end

    it 'should correct first_name' do
      expect(author.first_name).to eq 'zeff'
    end

    it 'should correct last_name' do
      expect(author.last_name).to eq 'adeka'
    end

    item = Game.new('Yes', '2022-10-15')
    author.add_items(item)

    it 'should have an item after calling add_items' do
      expect(author.items.length).to eq 1
    end
  end
end