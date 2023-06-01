require_relative 'app'

# Represents the basic input to the functions
class Main
  def select_options
    puts 'Welcome to Catalog of my things !!!'
    puts 'Kindly choose an option to interact with'
    puts '1.  Display all books'
    puts '2.  Display all musical albums'
    puts '3.  Display all genres'
    puts '4.  Display all games'
    puts '5.  Display all authors'
    puts '6.  Add books'
    puts '7.  Add label'
    puts '8.  Add musical album'
    puts '9. Add genre'
    puts '10. Add games'
    puts '11. Add author'
    puts 'Enter zero(0) to exit'
  end

  def options(option)
    app = App.new
    case option
    when '1'
      app.list_books
    when '2'
      app.display_musical_album
    when '3'
      app.display_genre
    when '4'
      app.display_games
    when '5'
      app.display_authors
    when '6'
      app.add_book
    when '7'
      app.add_label
    when '8'
      app.add_musical_album
    when '9'
      app.add_genre
    when '10'
      app.add_game
    when '11'
      app.add_author
    end
  end

  def execute_app
    loop do
      select_options

      option = gets.chomp

      options(option)

      break if option == '0'
    end
  end
end

def execute_main
  main = Main.new
  main.execute_app
end

execute_main
