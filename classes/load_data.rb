# frozen_string_literal: true

require 'json'
require 'fileutils'

require_relative '../models/load_music_album_mod'

# Class for loading all data from json files.
class LoadData
  include LoadMusicAlbum
end
