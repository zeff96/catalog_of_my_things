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
  end
end