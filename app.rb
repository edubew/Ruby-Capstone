# frozen_string_literal: true

require_relative 'models/games_mod'
require_relative 'models/author_mod'

require_relative 'classes/game'
require_relative 'classes/author'

require_relative 'classes/save_data'

require_relative 'classes/load_data'

# This class execute the main logic
class App
  attr_accessor :books, :musical_album, :games

  def initialize
    @books = []
    @musical_album = []
    @games = LoadData.new.load_game
    @authors = LoadData.new.load_author
  end

  include GamesMod
  include AuthorMod
end
