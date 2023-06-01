# Module for game logic
module GamesMod
  def display_games
    @games.each do |game|
      puts "Multiplayer: #{game.multiplayer} | Last Played: #{game.last_played_at} | Plublished On: #{game.publish_date}\n"
    end
  end

  def add_game
    puts 'Is it multiplayer game [y/n] '
    multiplayer = gets.chomp == 'y'
    puts 'Enter date of last played: '
    last_played_at = gets.chomp
    puts 'Enter publish data: '
    publish_data = gets.chomp
    game = Game.new(multiplayer, Date.parse(last_played_at), Date.parse(publish_data))
    @games << game
    puts 'Successfully added game !!!'
    SaveData.new.save_game(@games)
  end
end
