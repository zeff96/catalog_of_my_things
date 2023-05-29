class 
  attr_reader :id
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

  private

  def generate_id
    Random.rand(1..1000)
  end
end
