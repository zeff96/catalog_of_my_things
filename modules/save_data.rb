module SaveItems
  def save_author_data
    @save_author_data.save_data(@authors.map(&:to_hash))
  end

  def save_game_data
    @save_game_data.save_data(@games.map(&:to_hash))
  end
end
