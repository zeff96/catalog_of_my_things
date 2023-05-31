require_relative '../lib/genre'

module CreateGenre
  def add_genre
    name = prompt_input('Name: ').capitalize

    genre = Genre.new(name)
    @genres << genre unless genre.nil?
    genre
  end


end