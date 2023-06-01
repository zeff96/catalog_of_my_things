require_relative '../modules/add_author'
require_relative '../modules/add_label'
require_relative '../modules/list_items'
require_relative '../modules/add_game'
require_relative '../modules/books_app'

class App
  include CreateAuthor
  include Listitems
  include CreateGame
  include BookInputHandler
  include CreateLabel

  def initialize
    @authors = []
    @games = []
    @books = []
    @labels = []
  end

  def exit_program
    puts 'Thanks! exiting....'
  end
end
