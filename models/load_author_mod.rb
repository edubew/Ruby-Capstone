# frozen_string_literal: true

# Load method for reading authors details from the json file.
module LoadAuthor
  def load_author
    authors = []

    return authors unless File.exist?('./data/author.json')

    file = File.open('./data/author.json')
    data = JSON.parse(file.read)
    data.each do |author|
      authors << Author.new(author['first_name'], author['last_name'])
    end
    file.close
    authors
  end
end
