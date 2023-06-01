require_relative '../classes/author'

describe Author do
  before :each do
    @author = Author.new('Shafiu', 'Yushawu')
  end

  it 'should have an instance of the class Author' do
    expect(@author).to be_instance_of(Author)
  end
  it 'should set first name to the value provided' do
    first_name = @author.first_name
    expect(first_name).to eq 'Shafiu'
  end

  it 'should set last name to the value provided' do 
    last_name = @author.last_name 
    expect(last_name).to eq 'Yushawu' 
  end
end

