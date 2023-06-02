require 'rspec'
require_relative '../classes/label'
require_relative '../classes/item'

describe Label do
  let(:label) { Label.new('The Promise', 'Cream') }
  let(:item) { Item.new('2020-12-12') }

  describe '#initialize' do
    it 'assigns a random ID' do
      expect(label.id).to be_a(Integer)
    end

    it 'assigns the provided title' do
      expect(label.title).to eq('The Promise')
    end

    it 'assigns the provided color' do
      expect(label.color).to eq('Cream')
    end

    it 'initializes an empty items array' do
      expect(label.items).to be_empty
    end
  end

  describe '#add_item' do
    it 'adds the item to the items array' do
      label.add_item(item)

      expect(label.items).to include(item)
    end

    it 'associates the label with the added item' do
      label.add_item(item)

      expect(item.label).to eq(label)
    end
  end

  describe '#to_hash' do
    it 'returns a hash representation of the label' do
      expected_hash = {
        id: label.id,
        title: label.title,
        color: label.color
      }
      expect(label.to_hash).to eq(expected_hash)
    end
  end
end
