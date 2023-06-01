require_relative '../modules/add_author'
require_relative '../modules/add_label'
require_relative '../modules/list_items'
require_relative '../modules/add_game'
require_relative '../modules/books_app'
require_relative '../modules/json'
require_relative '../modules/save_data'
require_relative '../modules/fetch_data'

class App
  include CreateAuthor
  include Listitems
  include CreateGame
  include SaveItems
  include LoadData
  include BookInputHandler
  include CreateLabel

  def initialize
    @save_author_data = SaveData.new('data/author.json')
    @save_game_data = SaveData.new('data/game.json')
    @authors = load_author_data || []
    @games = load_game_data || []
    @books = []
    @labels = []
  end

  def exit_program
    save_author_data
    save_game_data
    puts 'Thanks! exiting....'
  end
end
