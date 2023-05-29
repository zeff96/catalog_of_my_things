class Item
  def initialize(publish_date)
    id = generate_id
    genre = nil
    author = nil
    source = nil
    label = nil
    @publish_date = publish_date
    archived = false
  end
end
