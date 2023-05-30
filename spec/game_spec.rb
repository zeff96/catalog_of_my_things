require_relative '../lib/game'
require 'date'

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

    it 'should have can_be_archived eq "false"' do
      @game.publish_date = '2020-10-15'
      expect(@game.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be_falsey
    end

    it 'should have can_be_archived eq "false"' do
      @game.publish_date = '2010-10-15'
      expect(@game.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be_truthy
    end
  end
end
