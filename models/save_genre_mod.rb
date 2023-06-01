# module for saving Genres details to json file.
module SaveGenre
  def save_genre(genres)
    genre_arr = []
    genres.each do |genre|
      genre_arr << {
        name: genre.name
      }
    end
    return if genre_arr.empty?

    file_exist('genre')
    File.write('./data/genre.json', JSON.pretty_generate(genre_arr))
  end
end
