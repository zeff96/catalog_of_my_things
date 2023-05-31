require_relative '../modules/add_author'
require_relative '../modules/list_items'
require_relative '../modules/add_game'
require_relative '../modules/json'
require_relative '../modules/save_data'

class App
  include CreateAuthor
  include Listitems
  include CreateGame
  include SaveItems

  def initialize
    @save_author_data = SaveData.new('../data/author.json')
    @authors = []
    @games = []
  end

  def exit_program
    save_author
    puts 'Thanks! exiting....'
  end
end
