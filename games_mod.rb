# frozen_string_literal: true

# Module for game logic
module GamesMod
  def add_game
    puts 'Enter multiplayer: '
    multiplayer = gets.chomp
    puts 'Enter date of last played: '
    last_played_at = gets.chomp
    puts 'Enter publish data: '
    publish_data = gets.chomp
    game = Game.new(multiplayer, last_played_at, publish_data)
    @games << game
    puts 'Successfully added game !!!'
    SaveData.new.save_game(@games)
  end
end
