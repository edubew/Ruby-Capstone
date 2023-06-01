module GenreMod
  def add_genre
    print 'Enter genre name: '
    name = gets.chomp
    genre = Genre.new(name)
    @genres.push(genre)
    SaveData.new.save_genre(@genres)
  end

  def display_genres
    @genres.each do |genre|
      puts "Genre: #{genre.name} "
    end
  end
end
