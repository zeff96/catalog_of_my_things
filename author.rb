class Author
  def initialize(first_name, last_name)
    @id = generate_id
    @first_name = first_name
    @last_name = last_name
    items = []
  end

  def add_items(item)
    @items << item
    @items.author= self
  end

  private

  def generate_id
    Random.rand(1..1000)
  end
end