class Author
  attr_reader :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @id = generate_id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_items(item)
    @items << item
    item.author = self
  end

  def to_hash
    {
      first_name: first_name,
      last_name: last_name
    }
  end

  private

  def generate_id
    Random.rand(1..1000)
  end
end
