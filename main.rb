require_relative 'app'

# Represents the basic input to the functions
class Main
  def select_options
    puts 'Welcome to Catalog of my things !!!'
    puts 'Kindly choose an option to interract with'
    puts '1. Display all books'
    puts '2. Display all musical album'
    puts '3. Display all games'
    puts '4. Add books'
    puts '5. Add musical album'
    puts '6. Add games'
    puts '7. Exist'
  end

  def options(option)
    app = App.new
    case option
    when '1'
      app.list_books
    when '2'
      app.display_musical_album
    when '3'
      app.display_games
    when '4'
      app.add_book
    when '5'
      app.add_musical_album
    when '6'
      app.add_game
    end
  end

  def execute_app
    loop do
      select_options

      option = gets.chomp

      options(option)

      break if option == '7'
    end
  end
end

def execute_main
  main = Main.new
  main.execute_app
end

execute_main
