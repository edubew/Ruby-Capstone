require_relative 'app'

# Represents the basic input to the functions
class Main
  def select_options
    puts 'Welcome to Catalog of my things !!!'
    puts 'Kindly choose an option to interract with'
    puts '1. Display all books'
    puts '2. Display all musical album'
    puts '3. Display all games'
    puts '4. Display all Genres'
    puts '5. Display all labels'
    puts '6. Display all authors'
    puts '7. Add books'
    puts '8. Add musical album'
    puts '9. Add games'
    puts '10. Exit'
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
      app.display_genres
    when '5'
      app.display_labels
    when '6'
      app.display_authors
    when '7'
      app.add_book
    when '8'
      app.musical_album
    when '9'
      app.add_games
    when '10'
      puts 'Thanks for using our application!'
    end
  end

  def execute_app
    loop do
      select_options

      option = gets.chomp

      options(option)

      break if option == '10'
    end
  end
end

def execute_main
  main = Main.new
  main.execute_app
end

execute_main
