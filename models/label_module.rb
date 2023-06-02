require 'json'
require_relative '../classes/label'

module LabelMod
  def initialize
    @labels_file = 'data/labels.json'
    @labels = JSON.parse(File.read(@labels_file)) || []
  end

  def add_label
    puts 'Enter Title:'
    title = gets.chomp
    puts 'Enter Color:'
    color = gets.chomp
    label = Label.new(title, color)
    @labels << label.to_h

    File.write(@labels_file, JSON.generate(@labels))
    @labels = JSON.parse(File.read(@labels_file))
    puts 'Successfully added label !!!'
  end

  def display_labels
    if @labels.empty?
      puts 'There are no labels.'
      puts "Please choose an option by entering a number!\n\n"
      return
    end
    @labels.each do |label|
      puts "Title: #{label['title']}, Color: #{label['color']}"
    end
    puts "Please choose an option by entering a number!\n\n"
  end
end
