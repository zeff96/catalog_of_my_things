module Listitems
  def list_all_authors
    puts 'List of all authors'
    print "No author found\n" if @authors.empty?

    @authors.each_with_index do |author, idx|
      puts "#{idx + 1}) #{author.first_name} #{author.last_name}"
    end
  end

  def list_all_games
    puts 'List of all games'
    print "No game found\n" if @games.empty?

    @games.each_with_index do |game, idx|
      puts "#{idx + 1}) Multiplayer: #{game.multiplayer} Last Played: #{game.last_played_at}"
    end
  end
end