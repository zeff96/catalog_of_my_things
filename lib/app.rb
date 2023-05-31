require_relative '../modules/add_author'
require_relative '../modules/list_items'

class App
  include CreateAuthor
  include Listitems

  def initialize
    @authors = []
  end

  def exit_program
    puts 'Thanks! exiting....'
  end
end
