# frozen_string_literal: true

require 'json'
require 'fileutils'

require_relative '../models/load_game_mod'
require_relative '../models/load_author_mod'

# Class for loading all data from json files.
class LoadData
  include LoadGame
  include LoadAuthor
end
