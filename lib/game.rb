require_relative 'item'
require 'date'

class Game < Item
  attr_reader :publish_date
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def to_hash
    {
      multiplayer: multiplayer,
      last_played_at: last_played_at
    }
  end

  private

  def can_be_archived?
    super && last_two_years?
  end

  def last_two_years?
    date_difference = Date.iso8601(@last_played_at).next_year(2)
    Date.today > date_difference
  end
end
