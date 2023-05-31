# frozen_string_literal: true

# module for saving authors details to json file.
module SaveAuthor
  def save_author(authors)
    author_arr = []
    authors.each do |author|
      author_arr << {
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    return if author_arr.empty?

    file_exist('game')
    File.write('./data/author.json', JSON.pretty_generate(author_arr))
  end
end
