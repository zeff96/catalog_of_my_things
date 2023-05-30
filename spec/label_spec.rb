require_relative '../lib/label'
require_relative '../lib/book'

describe Label do
  before(:all) do
    @label = Label.new('Rock Nation', 'grey')
  end

  describe '#label' do
    it 'should be an instance of class Label' do
      @label.should be_an_instance_of Label
    end

    it 'should return the title for the label' do
      expect(@label.title).to eql 'Rock Nation'
    end

    it 'should return the color for the label' do
      expect(@label.color).to eql 'grey'
    end
  end

  context 'should return number of items added to label' do
    it 'should return the count of 1' do
      book1 = Book.new('good', 'Glorious Printers', '2023-26-05')
      @label.add_items(book1)
      expect(@label.items.count).to eq 1
    end
    it 'should return the count of 2' do
      book2 = Book.new('bad', 'Education Publisher', '1991-03-03')
      @label.add_items(book2)
      expect(@label.items.count).to eq 2
    end
  end
end
