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

include BookMod
end
