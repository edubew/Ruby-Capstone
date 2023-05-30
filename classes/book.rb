require_relative 'item'
require 'date'

class Book < Item
    attr_accessor :publisher, :cover_state, :name, :id

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
end

book = Book.new('The Promise', 'good', Date.parse('2020-12-12'), 'book')
puts book.can_be_archived?