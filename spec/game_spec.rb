require_relative '../classes/game'

describe Game do
  before :each do
    @game = Game.new(true, '2023-01-01', '2000-01-01')
  end

  it 'should have an instance of the class Game' do
    expect(@game).to be_instance_of(Game)
  end

  it 'should set the multiplayer value to true' do
    multiplayer = @game.multiplayer
    expect(multiplayer).to eq true
  end

  it 'should set the last played date provided' do
    last_played_at = @game.last_played_at
    expect(last_played_at).to eq '2023-01-01'
  end

  it 'should set the published date provided ' do
    publish_date = @game.publish_date
    expect(publish_date).to eq '2000-01-01'
  end
end
