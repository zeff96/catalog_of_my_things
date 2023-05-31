require_relative '../modules/add_author'
require_relative '../modules/list_items'
require_relative '../modules/add_game'
require_relative '../modules/booksModule'

class App
  include CreateAuthor
  include Listitems
  include CreateGame
  include BookManager

  def initialize
    @authors = []
    @games = []
    @books = []
  end

  def exit_program
    puts 'Thanks! exiting....'
  end
end
