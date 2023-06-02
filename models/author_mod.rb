module AuthorMod
  def display_authors
    @authors.each do |author|
      puts "First Name: #{author.first_name} | Last Name: #{author.last_name}"
    end
  end

  def add_author
    print 'Enter author first name: '
    first_name = gets.chomp
    print 'Enter authors second name: '
    second_name = gets.chomp
    author = Author.new(first_name, second_name)
    @authors.push(author)
    SaveData.new.save_author(@authors)
  end
end
