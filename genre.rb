class Genre
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1000)
    @name = name
    @items = []
  end
end
