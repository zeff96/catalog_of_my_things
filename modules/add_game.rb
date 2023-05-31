require_relative '../lib/game'

module CreateGame
  multiplayer = prompt_eval('[YES | NO]: ')
  last_played_at = prompt_input('DATE[YYYY-Mon-DD]: ')

  game = Game.new(multiplayer, last_played_at)
  @game << game unless game.nil?
end