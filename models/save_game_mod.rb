# frozen_string_literal: true

module SaveGame
  def save_game(games)
    game_arr = []
    games.each do |game|
      game_arr << {
        multiplayer: game.multiplayer,
        last_played_at: game.last_played_at,
        publish_date: game.publish_date
      }
    end
    return if game_arr.empty?

    file_exist('game')
    File.write('./data/game.json', JSON.pretty_generate(game_arr))
  end
end
