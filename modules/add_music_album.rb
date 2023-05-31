require_relative '../lib/music_album'
require_relative 'list_items'

module CreateMusicAlbum
  def add_music_album
    publish_date = prompt_input('When was the music album published (yyyy-mon-dd): ')
    on_spotify = prompt_eval('Is the music album on_spotify?')
    

    puts "\nSelect a music album by number:"
    list_all_genres
    puts "#{@genres.size + 1}) Add new genre"
    genre_index = gets.chomp.to_i

    genre = if genre_index == @genres.size + 1
               add_genre
             else
               @genres[genre_index - 1]
             end

    album = MusicAlbum.new(publish_date, on_spotify)
    album.genre = genre
    @music_albums << album unless album.nil?
    puts 'music album created successfully!'
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
