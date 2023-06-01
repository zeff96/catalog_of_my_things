require_relative '../lib/book'
require_relative 'add_author'
require_relative 'add_label'
require_relative 'list_items'

module BookInputHandler
  include CreateAuthor
  include CreateLabel
  include Listitems

  def list_books
    puts "\nList all books"
    puts 'No books have been added.' if @books.empty?
    @books.each_with_index do |book, index|
      print "#{index + 1}) [Book] "
      print "Title: #{book.label.title}, " if defined?(book.label.title)
      print "Author: #{book.author.first_name} #{book.author.last_name}, " if defined?(book.author.first_name)
      print "Publisher: #{book.publisher}, "
      print "Publish Date: #{book.publish_date}, "
      print "Cover State: #{book.cover_state}"
      print ", Color: #{book.label.color}" if defined?(book.label.color)
      puts
    end
  end

  def add_book
    puts "\nCreate book"
    print 'Enter publisher: '
    publisher = gets.chomp.to_s

    print 'Enter publish date (yyyy-mm-dd): '
    publish_date = gets.chomp.to_s

    print 'Cover state: '
    cover_state = gets.chomp

    book = Book.new(publisher: publisher, publish_date: publish_date, cover_state: cover_state)

    print '[Option] Add book label?[y/n]: '
    add_response = gets.chomp.to_s.downcase
    options(book, 'label', @labels, method(:list_all_labels), method(:add_label)) if add_response == 'y'

    print '[Option] Add book author?[y/n]: '
    add_response = gets.chomp.to_s.downcase
    options(book, 'author', @authors, method(:list_all_authors), method(:add_author)) if add_response == 'y'

    @books << book
    puts 'Book created successfully.'
  end

  def options(book, class_name, list, action1, action2)
    puts "[Option] Press 1 to SELECT existing #{class_name}"
    puts "[Option] Press 2 to CREATE #{class_name}"
    puts '[Option] Press 3 to skip'

    choice = gets.chomp.to_s
    case choice
    when '1'
      action1.call
      return options(book, class_name, list, action1, action2) if list.empty?

      puts "Select #{class_name} by index[int]: "
      action1.call
      index = gets.chomp.to_i - 1
      return puts 'Invalid input' unless (0...list.length).include?(index)

      list[index].add_items(book)

    when '2'
      action2.call.add_items(book)
    when '3'
      'n'
    else
      puts 'Invalid input. Try again'
    end
  end
end
