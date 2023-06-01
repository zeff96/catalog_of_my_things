require_relative '../lib/music_album'
require 'date'
require_relative '../lib/item'


  describe MusicAlbum do
  let(:publish_date) { '2022-01-01' }
  let(:on_spotify) { true }
  let(:music_album) { MusicAlbum.new(publish_date, on_spotify) }

  describe '#initialize' do
    it 'sets the publish_date and on_spotify attributes' do
      expect(music_album.publish_date).to eq(publish_date)
      expect(music_album.on_spotify).to eq(on_spotify)
    end
  end

  describe '#to_hash' do
    it 'returns a hash with the publish_date and on_spotify' do
      expected_hash = {
        publish_date: publish_date,
        on_spotify: on_spotify
      }
      expect(music_album.to_hash).to eq(expected_hash)
    end
  end

  describe '#can_be_archived?' do
    it 'returns true if the item can be archived and on_spotify is true' do
      allow(Date).to receive(:today).and_return(Date.new(2033, 1, 1))
      expect(music_album.send(:can_be_archived?)).to be_truthy
    end

    it 'returns false if the item cannot be archived' do
      allow(Date).to receive(:today).and_return(Date.new(2030, 1, 1))
      expect(music_album.send(:can_be_archived?)).to be_falsey
    end
  end
end
