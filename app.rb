# frozen_string_literal: true

require_relative 'models/book_mod'
require_relative 'models/musical_album_mod'
require_relative 'models/games_mod'

require_relative 'classes/save_data'
require_relative 'classes/game'

# This class execute the main logic
class App
  attr_accessor :books, :musical_album, :games

  def initialize
    @books = []
    @musical_album = []
    @games = []
  end

  include GamesMod
  include BookMod
  include MusicalAlbumMod
end
