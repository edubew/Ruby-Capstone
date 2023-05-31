# frozen_string_literal: true

require 'json'
require 'fileutils'

require_relative '../models/save_game_mod'

class SaveData
  def file_exist(filename)
    FileUtils.mkdir_p('./data')
    FileUtils.touch('./data/game.json') if !File.exist?('./data/game.json') && filename == 'game'
  end

  include SaveGame
end
