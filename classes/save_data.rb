require 'json'
require 'date'
require 'fileutils'

require_relative '../models/save_game_mod'
require_relative '../models/save_author_mod'

# class for saving all data to json files.
class SaveData
  def file_exist(filename)
    FileUtils.mkdir_p('./data')
    FileUtils.touch('./data/game.json') if !File.exist?('./data/game.json') && filename == 'game'
    FileUtils.touch('./data/author.json') if !File.exist?('./data/author.json') && filename == 'author'
  end

  include SaveGame
  include SaveAuthor
end
