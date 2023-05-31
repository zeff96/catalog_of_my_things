require_relative 'lib/app'
require_relative 'lib/menu'

def main
  app = App.new
  menu = Menu.new(app)
  menu.menu_list
end

puts "Welcome to my catalog of things\n"

main
