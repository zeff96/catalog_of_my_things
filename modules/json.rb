require 'json'

class SaveData
  def initialize(file_name)
    @file_name = file_name
  end

  def save_data(data)
    File.write(@file_name, JSON.pretty_generate(data))
    puts 'Data saved successfully!'
  end

  def load_data
    return nil unless File.exist?(@file_name)

    file_content = File.read(@file_name)
    return JSON.parse(file_content) unless file_content.empty?
    nil
  rescue JSON::ParserError
    puts "Error parsing #{@file_name}. Invalid json format!"
  end
end
