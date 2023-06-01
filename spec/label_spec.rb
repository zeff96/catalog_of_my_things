require_relative '../lib/label'
require_relative '../lib/book'

describe Label do
  before(:all) do
    @label = Label.new('Rock Nation', 'grey')
  end

  describe '#label' do
    it 'be an instance of class Label' do
      expect(@label).to be_an_instance_of Label
    end

    it 'return the title for the label' do
      expect(@label.title).to eql 'Rock Nation'
    end

    it 'return the color for the label' do
      expect(@label.color).to eql 'grey'
    end
  end

  context 'return number of items added to label' do
    it 'return the count of 1' do
      book1 = Book.new(publisher: 'Glorious Printers', publish_date: '2023-26-05', cover_state: 'good')
      @label.add_items(book1)
      expect(@label.items.count).to eq 1
    end
    it 'return the count of 2' do
      book2 = Book.new(publisher: 'Education Publisher', publish_date: '1991-03-03', cover_state: 'bad')
      @label.add_items(book2)
      expect(@label.items.count).to eq 2
    end
  end
end
