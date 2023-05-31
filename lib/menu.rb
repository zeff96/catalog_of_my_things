OPTIONS = {
  1 => { label: 'List all authors', action: :list_all_authors },
  2 => { label: 'List of games', action: :list_all_games },
  3 => { label: 'Add game', action: :add_game },
  4 => { label: 'Exit', action: :exit_program }
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
