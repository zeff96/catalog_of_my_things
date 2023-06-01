class Genre
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1000)
    @name = name
    @items = []
  end

  def add_items(item)
    @items << item
    item.genre = self
  end

  def to_hash
    {
    name: name
    }
  end  
end
