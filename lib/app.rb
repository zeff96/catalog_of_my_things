require_relative '../modules/add_author'
require_relative '../modules/list_items'
require_relative '../modules/add_game'

class App
  include CreateAuthor
  include Listitems
  include CreateGame

  def initialize
    @authors = []
    @games = []
  end

  def exit_program
    puts 'Thanks! exiting....'
  end
end
