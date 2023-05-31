require_relative '../lib/item'
require_relative '../lib/genre'

describe Genre do
  let(:genre_name) { 'Science Fiction' }
  let(:item_publish_date) { '2023-01-01' }
  let(:item) { Item.new(item_publish_date) }
  subject(:genre) { Genre.new(genre_name) }

  before do
    Item.include(Associations)
  end

  describe '#initialize' do
    it 'has a name' do
      expect(genre.name).to eq(genre_name)
    end

    it 'has an empty list of items' do
      expect(genre.items).to be_empty
    end
  end

  describe '#add_item' do
    it 'adds an item to the genre' do
      genre.add_item(item)
      expect(genre.items).to include(item)
    end

    it 'sets the genre of the added item' do
      genre.add_item(item)
      expect(item.genre).to eq(genre)
    end
  end
end
