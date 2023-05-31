require_relative '../lib/game'

module CreateGame
  def add_game
    multiplayer = prompt_eval('[YES | NO]: ')
    last_played_at = prompt_input('DATE[YYYY-Mon-DD]: ')
  
    game = Game.new(multiplayer, last_played_at)
    @game << game unless game.nil?
  end

  private

  def prompt_input(message)
    print message
    gets.chomp
  end

  def prompt_eval(message)
    print message
    val = gets.chomp.downcase
    case val
    when y
      'YES'
    when n
      'NO'
    else
      prompt_eval(message)
    end
  end
end