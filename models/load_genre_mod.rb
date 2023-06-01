# Load method for reading genres details from the json file.
module LoadGenre
  def load_genre
    genres = []

    return genres unless File.exist?('./data/genre.json')

    file = File.open('./data/genre.json')
    data = JSON.parse(file.read)
    data.each do |genre|
      genres << Genre.new(genre['name'])
    end
    file.close
    genres
  end
end
