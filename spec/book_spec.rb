require_relative '../lib/book'

describe Book do
  before(:all) do
    @book1 = Book.new('good', 'Glorious Printers', '2022-02-05')
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
      expect(@book1.move_to_archive).to be(false)
    end

    it 'should return true' do
      book2 = Book.new('bad', 'Education Publisher', '1991-03-03')
      expect(book2.move_to_archive).to be(true)
    end
  end
end
