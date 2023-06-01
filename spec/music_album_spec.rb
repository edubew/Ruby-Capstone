require_relative '../classes/music_album'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new(true, '2002-02-02')
  end

  it 'should have an instance of the class MusicAlbum' do
    expect(@music_album).to be_instance_of(MusicAlbum)
  end

  it 'should set the on_spotify value to true' do
    on_spotify = @music_album.on_spotify
    expect(on_spotify).to eq true
  end

  it 'should set the published date provided ' do
    publish_date = @music_album.publish_date
    expect(publish_date).to eq '2002-02-02'
  end
end
