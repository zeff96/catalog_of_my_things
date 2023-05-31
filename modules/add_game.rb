require_relative '../lib/game'
require_relative 'list_items'

module CreateGame
  def add_game
    multiplayer = prompt_eval('Is the game multiplayer?')
    last_played_at = prompt_input('When was the game last played? (yyyy-mon-dd): ')

    puts "\nSelect a game author by number:"
    list_all_authors
    puts "#{@authors.size + 1}) Add new Author"
    author_index = gets.chomp.to_i

    if author_index == @authors.size + 1
      author = add_author
    else
      author = @authors[author_index - 1]
    end


    game = Game.new(multiplayer, last_played_at)
    game.author = author
    @games << game unless game.nil?
    puts 'Game created successfully!'
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
