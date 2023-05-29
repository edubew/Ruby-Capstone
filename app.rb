require_relative "models/book_mod"
require_relative "models/musical_album_mod"
require_relative "models/games_mod"

class App 
  def initialize 
    @book = []
    @musical_album = []
    @games = []
  end

  include BookMod
  include MusicalAlbumMod
  include GamesMod
end