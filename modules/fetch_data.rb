require_relative '../lib/author'
require_relative '../lib/game'

module LoadData
  def load_author_data
    author_data = @save_author_data.load_data
    return nil if author_data.nil?

    author_data.map { |author| Author.new(author['first_name'], author['last_name']) }
  end

  def load_game_data
    game_data = @save_game_data.load_data
    return nil if game_data.nil?

    game_data.map { |data| Game.new(data['multiplayer'], data['last_played_at']) }
  end
end
