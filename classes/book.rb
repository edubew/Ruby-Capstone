require_relative 'item'
require 'date'

# Book class that inherits from Item class and defines the attributes of a book
class Book < Item
  attr_accessor :publisher, :cover_state, :name, :id, :title, :label_color

  def initialize(publisher, cover_state, publish_date, name)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
    @name = name
    @id = Random.rand(1..1000)
  end

  def can_be_archived?
    super && @cover_state == 'bad'
  end

  def to_h
    {
      title: @title,
      name: @name,
      publisher: @publisher,
      publish_date: @publish_date,
      cover_state: @cover_state,
      label_color: @label_color
    }
  end
end

# book = Book.new('The Promise', 'good', Date.parse('2020-12-12'), 'book')
# puts book.can_be_archived?
