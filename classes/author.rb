require_relative 'item'

# Author class for adding authors name
class Author
  attr_accessor :items
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @id = Random.rand(1..1_000_000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end
