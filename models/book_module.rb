module BookMod
    def add_book
      puts 'Enter Publisher:'
      publisher = gets.chomp
      puts 'Enter Cover State:'
      cover_state = gets.chomp
      puts 'Enter Publish Date:'
      publish_date = gets.chomp
      puts 'Enter Name:'
      name = gets.chomp
      @books << Book.new(publisher, cover_state, publish_date, name)
      puts 'Successfully added book !!!'
    end
  end