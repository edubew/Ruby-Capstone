require_relative 'app'

# Represents the basic input to the functions
class Main
  def select_options
    puts ''
    puts 'Welcome to Catalog of my things !!!'
    puts 'Kindly choose an option to interact with'
    puts '1.  Display all books'
    puts '2.  Display all labels'
    puts '3.  Display all music albums'
    puts '4.  Display all genres'
    puts '5.  Display all games'
    puts '6.  Display all authors'
    puts '7.  Add books'
    puts '8.  Add label'
    puts '9.  Add music album'
    puts '10. Add genre'
    puts '11. Add game'
    puts '12. Add author'
    puts 'Enter zero(0) to exit'
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def options(option)
    app = App.new
    case option
    when '1'
      app.list_books
    when '2'
      app.list_labels
    when '3'
      app.display_music_album
    when '4'
      app.display_genres
    when '5'
      app.display_games
    when '6'
      app.display_authors
    when '7'
      app.add_book
    when '8'
      app.add_label
    when '9'
      app.add_music_album
    when '10'
      app.add_genre
    when '11'
      app.add_game
    when '12'
      app.add_author
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

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
