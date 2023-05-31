require_relative '../lib/author'

module CreateAuthor
  def add_author
    first_name = prompt_input('FirstName: ')
    last_name = prompt_input('LastName: ')

    author = Author.new(first_name, last_name)
    @authors << author unless author.nil?
    author
  end

  private

  def prompt_input(message)
    print message
    gets.chomp
  end
end
