# frozen_string_literal: true

require_relative 'item'
require 'date'

# Game description for the game
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(publish_date)
  end

  private

  def can_be_archived?
    publish_datetime = DateTime.parse(@publish_date)
    ((Date.today - publish_datetime).to_i / 365) > 10
  end
end

# game = Game.new('shafiu', Date.parse('2020-12-12'), Date.parse('2020-12-12'))
