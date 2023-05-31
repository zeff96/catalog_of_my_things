require_relative '../lib/game'

module CreateGame
  def add_game
    multiplayer = prompt_eval('Is the game a multiplayer?')
    last_played_at = prompt_input('When was the game last played? (yyyy-mon-dd): ')
  
    game = Game.new(multiplayer, last_played_at)
    @games << game unless game.nil?
    puts 'Game created succesfully!'
  end

  private

  def prompt_input(message)
    print message
    gets.chomp
  end

  def prompt_eval(message)
    val = prompt_input("#{message} (Y/N): ").downcase
    %w[y yes].include?(val)
  end
end