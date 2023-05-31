require_relative 'models/book_module'

require_relative 'classes/book'

# This class execute the main logic
class App
  attr_accessor :books, :musical_album, :games

  def initialize
    @books = []
    @musical_album = []
    @games = []
  end

  # Display all available books
  def display_books
    return unless @books.empty?
    puts 'No books available yet. Please add a book !!!'
    @books.each do |book|
      puts "Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Publish Date: #{book.publish_date}, Name: #{book.name}"
    end
  end
  include BookMod
end
