# frozen_string_literal: true

require_relative 'item'
require 'date'

# Game description for the game
class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date)
    @on_spotify = on_spotify
    super(publish_date)
  end

  private

  def can_be_archived?
    publish_datetime = DateTime.parse(@publish_date)
    ((Date.today - publish_datetime).to_i / 365) > 10
  end
end
