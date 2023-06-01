require_relative 'item'
require_relative '../modules/modules'
require_relative 'label'
require_relative 'author'
require_relative 'genre'

class Book < Item
  include Associations

  attr_accessor :publisher, :cover_state

  def initialize(publisher:, publish_date:, cover_state:)
    super(publish_date)
    @cover_state = cover_state
    @publisher = publisher
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
