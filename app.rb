# frozen_string_literal: true

require_relative 'models/book_mod'
require_relative 'models/music_album_mod'
require_relative 'models/games_mod'

require_relative 'classes/save_data'
require_relative 'classes/game'
require_relative 'classes/music_album'

# This class execute the main logic
class App
  attr_accessor :books, :music_albums, :games

  def initialize
    @books = LoadData.new.load_game
    @music_albums = []
    @games = []
  end

  include GamesMod
  include BookMod
  include MusicAlbumMod
end
