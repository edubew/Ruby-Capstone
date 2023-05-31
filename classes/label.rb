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
