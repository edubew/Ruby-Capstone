# frozen_string_literal: true

require 'json'
require 'fileutils'

require_relative '../models/save_game_mod'
require_relative '../models/save_music_album_mod'

class SaveData
  def file_exist(filename)
    FileUtils.mkdir_p('./data')
    FileUtils.touch('./data/game.json') if !File.exist?('./data/game.json') && filename == 'game'
    FileUtils.touch('./data/music_album.json') if !File.exist?('./data/music_album.json') && filename == 'music_album'
  end

  include SaveGame
  include SaveMusicAlbum
end
