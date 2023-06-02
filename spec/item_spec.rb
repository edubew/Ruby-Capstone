require_relative '../classes/item'

describe Item do
  before :each do
    @item = Item.new('2000-01-01')
  end

  it 'should have an instance of the class Item' do
    expect(@item).to be_instance_of(Item)
  end

  it 'should set the published date to the value provided' do
    publish_date = @item.publish_date
    expect(publish_date).to eq '2000-01-01'
  end
end
