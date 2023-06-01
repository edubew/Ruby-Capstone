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
    super && @last_played_at < 2.years.ago
  end
end

# game = Game.new('shafiu', Date.parse('2020-12-12'), Date.parse('2020-12-12'))
