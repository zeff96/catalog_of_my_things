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
      puts "#{idx + 1}) Multiplayer: #{game.multiplayer} Last Played: #{game.last_played_at}\n"
    end
  end


  def list_all_labels
    puts "\nList all Labels"
    puts 'No labels have been added.' if @labels.empty?

    @labels.each_with_index { |label, index| puts "#{index + 1}) [Label] Title: #{label.title}, Color: #{label.color}" }

  def list_all_albums
    puts 'List all albums'
    print "No album found\n" if @music_albums.empty?

    @music_albums.each_with_index do |value, idx|
      puts "#{idx + 1}) publish_date: #{value.publish_date} on_spotify: #{value.on_spotify}"
    end
  end

  def list_all_genres
    puts 'List all genres'
    print "No genre found\n" if @genres.empty?

    @genres.each_with_index do |genre, idx|
      puts "#{idx + 1})  #{genre.name}"
    end
  end
end
