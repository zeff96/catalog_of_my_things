require_relative '../lib/author'

module AuthorManager
  def add_author
    first_name = prompt_input('FirstName: ')
    last_name = prompt_input('LastName')

    author = Author.new(first_name, last_name)
    @authors << author unless author.nil?
  end
end