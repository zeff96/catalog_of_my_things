class Game
  def initialize(multiplayer, last_palyed_at)
    @multiplayer = multiplayer
    @last_palyed_at = last_palyed_at
  end

  def can_be_archived?
    super && played_last_at?
  end
end