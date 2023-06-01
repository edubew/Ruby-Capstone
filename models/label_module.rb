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
        label = Label.new(id, title, color)
        @labels << label.to_h
    end
end