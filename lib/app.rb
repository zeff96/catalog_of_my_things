require_relative '../modules/add_author'
require_relative '../modules/add_label'
require_relative '../modules/list_items'
require_relative '../modules/add_game'
require_relative '../modules/books_app'
require_relative '../modules/json'
require_relative '../modules/save_data'
require_relative '../modules/fetch_data'
require_relative '../modules/add_music_album'
require_relative '../modules/add_genre'

class App
  include CreateAuthor
  include Listitems
  include CreateGame
  include SaveItems
  include LoadData
  include BookInputHandler
  include CreateLabel
  include CreateMusicAlbum
  include CreateGenre

  def initialize
    @save_author_data = SaveData.new('data/author.json')
    @save_game_data = SaveData.new('data/game.json')
    @save_genre_data = SaveData.new('data/genre.json')
    @save_music_album_data = SaveData.new('data/music_album.json')
    @save_label_data = SaveData.new('data/label.json')
    @save_book_data = SaveData.new('data/book.json')
    @authors = load_author_data || []
    @games = load_game_data || []
    @genres = load_genre_data || []
    @music_albums = load_music_album_data || []
    @labels = load_label_data || []
    @books = load_book_data || []
  end

  def exit_program
    save_author_data
    save_game_data
    save_genre_data
    save_music_album_data
    save_label_data
    save_book_data
    puts 'Thanks! exiting....'
  end
end
