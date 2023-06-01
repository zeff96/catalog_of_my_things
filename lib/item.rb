require 'date'
require_relative '../modules/modules'

class Item
  include Associations

  attr_reader :id
  attr_accessor :publish_date

  def initialize(publish_date)
    generate_id
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private

  def generate_id
    @id = Random.rand(1..1000)
  end

  def can_be_archived?
    archived_date = Date.iso8601(@publish_date).next_year(10)
    Date.today > archived_date
  end
end
