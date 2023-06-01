require_relative 'models/book_module'
require_relative 'models/games_mod'
require_relative 'models/author_mod'

require_relative 'classes/book'
require_relative 'classes/game'
require_relative 'classes/author'
require_relative 'classes/save_data'
require_relative 'classes/load_data'

# This class execute the main logic
class App
  attr_accessor :books, :musical_album, :games

  include BookMod
  include GamesMod
  include AuthorMod

  def initialize
    @musical_album = []
    @games = LoadData.new.load_game
    @authors = LoadData.new.load_author
    @book_file = 'data/books.json'
    @books = if File.exist?(@book_file)
               file_contents = File.read(@book_file)
               file_contents.empty? ? [] : JSON.parse(file_contents)
             else
               []
             end
    @labels_file = 'data/labels.json'
    @labels = if File.exist?(@labels_file)
                file_contents = File.read(@labels_file)
                file_contents.empty? ? [] : JSON.parse(file_contents)
              else
                []
              end
  end
end
