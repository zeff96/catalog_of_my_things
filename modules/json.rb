require 'json'

class SaveData
  def initialize(file_name)
    @file_name = file_name
  end

  def save_data(data)
    File.write(@file_name, JSON.pretty_generate(data))
    puts 'Data saved successfully!'
  end
end
