require_relative 'item'
require 'date'

class Book < Item
    attr_accessor :publisher, :cover_state, :name
    def initialize(publisher, cover_state, publish_date, name)
        super(id, name, publish_date)
        @publisher = publisher
        @cover_state = cover_state
        @name = name
    end

    private

    def can_be_archived?
        super && @cover_state == 'bad'
    end
end