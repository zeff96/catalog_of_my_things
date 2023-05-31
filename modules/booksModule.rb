require_relative '../lib/book'

module BookManager
  def list_books
    puts "\nList all books\n"
    puts 'No books have been added.' if @books.empty?
    @books.each do |book|
      puts "[Book] Publisher: #{book.publisher}, Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}"
    end
  end

  def add_book
    puts "\nCreate book\n"
    print 'Enter publisher: '
    publisher = gets.chomp.to_s

    print 'Enter publish date (yyyy-mm-dd): '
    publish_date = gets.chomp.to_s

    print 'Cover state: '
    cover_state = gets.chomp

    book = Book.new(publisher: publisher, publish_date: publish_date, cover_state: cover_state)
    @books << book

    puts 'Book created successfully.'
  end
end
