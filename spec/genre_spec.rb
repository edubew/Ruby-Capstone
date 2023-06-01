require_relative '../classes/genre'

describe Genre do
  before :each do
    @genre = Genre.new('Gospel')
  end

  it 'should have an instance of the class Genre' do
    expect(@genre).to be_instance_of(Genre)
  end
  it 'should set name to the value provided' do
    name = @genre.name
    expect(name).to eq 'Gospel'
  end
end