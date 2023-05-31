require_relative '../modules/add_author'
require_relative '../modules/list_items'
require_relative '../modules/add_game'
require_relative '../modules/json'

class App
  include CreateAuthor
  include Listitems
  include CreateGame

  def initialize
    @save_author_data = SaveData.new('../data/author.json')
    @authors = []
    @games = []
  end

  def exit_program
    puts 'Thanks! exiting....'
  end
end
