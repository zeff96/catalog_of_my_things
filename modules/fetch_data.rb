module LoadData
  def load_author_data
    author_data = @save_author_data.load_data
    return nil if author_data.nil?

    author_data.map {|author| Author.new(author['first_name'], author['last_name'])}
  end
end