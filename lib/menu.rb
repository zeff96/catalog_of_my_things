OPTIONS = {
  1 => {label: 'List all authors', action: :list_all_authors},
  2 => {label: 'Add author', action: :add_author},
  3 => {label: 'Exit', action: :exit_program}
}.freeze


class Menu
  def initialize(app)
    @app = app
  end

  def display
    puts "\nChoose an option by entering a number:"
    OPTIONS.each {|key, value| puts "#{key} - #{value[:label]}"}
  end