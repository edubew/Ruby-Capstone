require_relative 'item'

# Genre class for adding Genres name
class Genre
  attr_accessor :items
  attr_reader :name

  def initialize(name)
    @id = Random.rand(1..1_000_000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
