require 'json'
require 'fileutils'

require_relative '../models/load_game_mod'
require_relative '../models/load_author_mod'
require_relative '../models/load_music_album_mod'
require_relative '../models/load_genre_mod'

# Class for loading all data from json files.
class LoadData
  include LoadGame
  include LoadAuthor
  include LoadMusicAlbum
  include LoadGenre
end
