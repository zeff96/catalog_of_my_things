module SaveItems
  def save_author_data
    @save_author_data.save_data(@authors.map(&:to_hash))
  end
end
