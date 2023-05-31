require_relative '../modules/add_author'

class App
  include AuthorManager

  def initialize
    @authors = []
  end

  def exit_program
    puts 'Thanks! exiting....'
  end
end
