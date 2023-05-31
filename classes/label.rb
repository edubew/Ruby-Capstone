require_relative 'item'

# Label class that is asscoiated with a item
class Label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(title, color)
    @id = Random.rand(1..1_000_000)
    @title = title
    @color = color
    @items = []
  end

   # Method to add an item to a label and associate the label with that item.
   def add_item(item)
    @items.push(item)
    item.label = self
  end
end

label = Label.new('The Promise', 'Cream')
label.add_item(Item.new('2020-12-12'))
puts label.to_hash
