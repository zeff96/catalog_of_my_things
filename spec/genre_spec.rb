require_relative '../modules/modules'
require_relative '../lib/item'
require_relative '../lib/genre'
require 'date'

describe Genre do
  let(:genre_name) { 'Action' }
  let(:genre) { Genre.new(genre_name) }

  describe '#initialize' do
    it 'sets the name attribute' do
      expect(genre.name).to eq(genre_name)
    end

    it 'initializes the items array' do
      expect(genre.items).to be_an(Array)
      expect(genre.items).to be_empty
    end
  end

  describe '#add_items' do
    let(:item) { double('Item') }

    before do
      allow(item).to receive(:genre=)
    end

    it 'adds an item to the items array' do
      genre.add_items(item)
      expect(genre.items).to include(item)
    end

    it 'sets the genre of the item' do
      expect(item).to receive(:genre=).with(genre)
      genre.add_items(item)
    end
  end

  describe '#to_hash' do
    it 'returns a hash representation of the genre' do
      expected_hash = { name: genre_name }
      expect(genre.to_hash).to eq(expected_hash)
    end
  end
end
