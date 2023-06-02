require 'json'
require 'date'
require 'fileutils'

require_relative '../models/save_game_mod'
require_relative '../models/save_author_mod'
require_relative '../models/save_music_album_mod'
require_relative '../models/save_genre_mod'

# class for saving all data to json files.
class SaveData
  def file_exist(filename)
    FileUtils.mkdir_p('./data')
    FileUtils.touch('./data/game.json') if !File.exist?('./data/game.json') && filename == 'game'
    FileUtils.touch('./data/author.json') if !File.exist?('./data/author.json') && filename == 'author'
    FileUtils.touch('./data/music_album.json') if !File.exist?('./data/music_album.json') && filename == 'music_album'
    FileUtils.touch('./data/genre.json') if !File.exist?('./data/genre.json') && filename == 'genre'
  end

  include SaveGame
  include SaveAuthor
  include SaveMusicAlbum
  include SaveGenre
end
