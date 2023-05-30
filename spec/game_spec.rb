require_relative '../lib/game'

describe Game do
  before(:each) do
    @game = Game.new('Yes', '2005-10-15')
  end

  context 'Game class test' do
    it 'should be an instance of Game class' do
      expect(@game).to be_an_instance_of Game
    end

    it 'multiplayer should eq "Yes"' do
      expect(@game.multiplayer).to eq 'Yes'
    end
  end
end