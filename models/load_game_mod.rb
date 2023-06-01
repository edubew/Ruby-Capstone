# a module for reading authors details from class
module LoadGame
  def load_game
    games = []

    return games unless File.exist?('./data/game.json')

    file = File.open('./data/game.json')
    data = JSON.parse(file.read)
    data.each do |game|
      games << Game.new(game['multiplayer'], game['last_played_at'], game['publish_date'])
    end
    file.close
    games
  end
end
