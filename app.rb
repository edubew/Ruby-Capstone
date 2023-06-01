require_relative 'models/book_module'

require_relative 'classes/book'

# This class execute the main logic
class App
  include BookMod
  attr_accessor :books, :musical_album, :games

  def initialize
    @musical_album = []
    @games = []
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
