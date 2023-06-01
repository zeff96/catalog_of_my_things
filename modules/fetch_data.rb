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

  def load_genre_data
    genre_data = @save_genre_data.load_data
    return nil if genre_data.nil?

    genre_data.map { |data| Genre.new(data['name']) }
  end

  def load_music_album_data
    music_album_data = @save_music_album_data.load_data
    return nil if music_album_data.nil?

    music_album_data.map { |data| MusicAlbum.new(data['publish_date'], data['on_spotify']) }
  end
end
