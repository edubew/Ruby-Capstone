require 'json'
require_relative '../classes/book'
require_relative '../models/label_module'

module BookMod
  include LabelMod

  def initialize
    @book_file = 'data/books.json'
    @books = JSON.parse(File.read(@book_file)) || []
  end

  def add_book
    puts 'Enter Publisher:'
    publisher = gets.chomp

    puts 'Enter Cover State:'
    cover_state = gets.chomp
    puts 'Enter Publish Date:'
    publish_date = gets.chomp
    puts 'Enter Name:'
    name = gets.chomp
    book = Book.new(publisher, cover_state, publish_date, name)
    add_label(book)

    @books << book.to_h

    File.write(@book_file, JSON.generate(@books))
    @books = JSON.parse(File.read(@book_file))
    puts 'Successfully added book !!!'
  end

  def list_books
    if @books.empty?
      puts 'There are no books.'
      return
    end
    @books.each do |book|
      puts "Name: #{book['name']}, Publisher: #{book['publisher']}, Publish date: #{book['publish_date']}, Cover state: #{book['cover_state']}"
    end
  end
end
