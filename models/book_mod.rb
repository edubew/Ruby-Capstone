# frozen_string_literal: true

module BookMod

  def display_books
    @books.each do |book| 
      puts "title: #{}"
  end
end
