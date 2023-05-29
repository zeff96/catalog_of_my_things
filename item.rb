class 
  attr_reader :id, :genre, :author, :source, :label
  attr_accessor :publish_date
  
  def initialize(publish_date)
    id = generate_id
    genre = nil
    author = nil
    source = nil
    label = nil
    @publish_date = publish_date
    archived = false
  end

  def genre=(genre)
    @genre = genre
    genre.add_items(self) unless genre.add_items.include?(self)
  end

  private

  def generate_id
    Random.rand(1..1000)
  end
end
