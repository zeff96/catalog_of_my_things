require_relative '../lib/book'

describe Book do
  before(:all) do
    @book1 = Book.new(publisher: 'Glorious Printers', publish_date: '2022-02-05', cover_state: 'good')
  end

  describe '#book' do
    it 'should be an instance of class Book' do
      @book1.should be_an_instance_of Book
    end

    it 'should return the cover_state for the book' do
      expect(@book1.cover_state).to eql 'good'
    end

    it 'should return the publisher of the book' do
      expect(@book1.publisher).to eql 'Glorious Printers'
    end

    it 'should return the color for the label' do

      expect(@book1.publish_date).to eql '2022-02-05'
    end
  end

  context 'should return correct value for can_be_archived?' do
    it 'should return false' do
      expect(@book1.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be(false)
    end

    it 'should return true' do
      book2 = Book.new(publisher: 'Education Publisher', publish_date: '1991-03-03', cover_state: 'bad')
      expect(book2.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be(true)
    end
  end
end
