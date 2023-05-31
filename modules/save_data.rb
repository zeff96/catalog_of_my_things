
module SaveItems
  def save_author(author)
    @save_author_data.save_data(@authors.map(&:to_hash))
  end
end