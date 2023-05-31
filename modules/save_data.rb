
module SaveItems
  def save_author(author)
    @save_author_data.save_data(@author.map(&:to_hash))
  end
end