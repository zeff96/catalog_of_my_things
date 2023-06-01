require_relative '../lib/game'
require 'date'

describe Game do
  before(:each) do
    @multiplayer = 'Yes'
    @last_played_at = '2020-10-15'
    @game = Game.new(@multiplayer, @last_played_at)
  end

  context 'Game class test' do
    it 'be an instance of Game class' do
      expect(@game).to be_an_instance_of Game
    end

    it 'multiplayer should eq "Yes"' do
      expect(@game.multiplayer).to eq 'Yes'
    end

    it 'can_be_archived eq "false"' do
      @game.publish_date = '2020-10-15'
      expect(@game.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be_falsey
    end

    it 'can_be_archived eq "true"' do
      @game.publish_date = '2010-10-15'
      expect(@game.instance_eval('can_be_archived?', __FILE__, __LINE__)).to be_truthy
    end

    it 'change to hash format' do
      hash = {
        multiplayer: @multiplayer,
        last_played_at: @last_played_at
      }

      expect(@game.to_hash).to eq hash
    end
  end
end
