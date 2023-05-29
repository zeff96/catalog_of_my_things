require_relative 'item'

class Game < Item
  attr_reader :publish_date
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    super(publish_date)
    @multiplayer = multiplayer
    @last_palyed_at = last_played_at
  end

  def can_be_archived?
    super && played_last_at?
  end

  private

  def played_last_at?
    current_year = Time.now.year
    last_played_year = @last_palyed_at.year
    archived = current_year - last_played_year
    archived > 2
  end
end
