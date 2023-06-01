require_relative 'item'

# Label class that is asscoiated with a item
class Label
  attr_accessor :title, :color, :items
  attr_reader :id

  def initialize(title, color)
    @id = Random.rand(1..1_000_000)
    @title = title
    @color = color
    @items = []
  end

  # Method to add an item to a label and associate the label with that item.
  def add_item(item)
    return if @items.include?(item)

    @items << item
    item.label = self
    item.title = @title
    item.label_color = @color
  end

  def to_h
    {
      id: @id,
      title: title,
      color: color
    }
  end
end
