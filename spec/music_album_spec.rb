require_relative '../lib/music_album'
require 'date'
require_relative '../lib/item'

describe MusicAlbum do
  before(:each) do
    @album = MusicAlbum.new('2010-01-01', true)
  end

  context 'music album class test' do
    it 'be an instance of MusicAlbum' do
      expect(@album).to be_an_instance_of MusicAlbum
    end

    it 'inherit from Item class' do
      expect(@album).to be_a(Item)
    end

    it 'move_to_archive to eq "true"' do
      expect(@album.move_to_archive).to be_truthy
    end

    it 'should return true if publish date is older than 10yrs and on Spotify' do
      expect(@album.send(:can_be_archived?)).to be_truthy
    end

    it 'should return false if publish date is older than 10yrs but not on Spotify' do
      album = MusicAlbum.new('2010-01-01', false)
      expect(album.send(:can_be_archived?)).to be_falsy
    end
  end

  context 'item class test' do
    it 'should return true if publish date is older than 10yrs' do
      expect(@album.send(:can_be_archived?)).to be_truthy

    end
  end
end
