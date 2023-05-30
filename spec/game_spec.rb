require_relative '../lib/game'

describe Game do
  before(:each) do
    @game = Game.new('Yes', '2005-10-15')
  end
end