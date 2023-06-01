OPTIONS = {
  1 => { label: 'List all authors', action: :list_all_authors },
  2 => { label: 'List all genres', action: :list_all_genres },
  3 => { label: 'List all labels', action: :list_all_labels },
  4 => { label: 'List of games', action: :list_all_games },
  5 => { label: 'List all music albums', action: :list_all_albums },
  6 => { label: 'List all books', action: :list_books },
  7 => { label: 'Add a game', action: :add_game },
  8 => { label: 'Add a music album', action: :add_music_album },
  9 => { label: 'Add book', action: :add_book },
  10 => { label: 'Exit', action: :exit_program }
}.freeze

class Menu
  def initialize(app)
    @app = app
  end

  def display
    puts "\nChoose an option by entering a number:"
    OPTIONS.each { |key, value| puts "#{key} - #{value[:label]}" }
  end

  def handle_selection(selection)
    handlers = OPTIONS[selection]
    if handlers
      @app.send(handlers[:action])
    else
      puts 'Invalid option'
    end
  end

  def menu_list
    loop do
      display
      option = gets.chomp.to_i
      handle_selection(option)
      break if option == OPTIONS.size
    end
  end
end
