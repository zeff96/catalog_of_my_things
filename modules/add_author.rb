require_relative '../lib/author'

module AuthorManager
  def add_author
    first_name = prompt_input('FirstName: ')
    last_name = prompt_input('LastName')

    author = Author.new(first_name, last_name)
    @authors << author unless author.nil?
  end

  def list_all_authors
    puts 'List of all authors'
    print "No author found\n" if @authors.empty?

    @authors.each_with_index do |author, idx|
      puts "#{idx + 1}.#{author.first_name} #{author.last_name}"
    end
  end
end
