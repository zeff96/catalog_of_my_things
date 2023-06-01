require_relative '../lib/label'

module CreateLabel
  def add_label
    puts "\nAdd label"
    print 'Enter title: '
    title = gets.chomp.to_s

    print 'Enter color: '
    color = gets.chomp.to_s

    label = Label.new(title, color)
    @labels << label
    label
  end
end
