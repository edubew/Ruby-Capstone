require_relative 'item'

class Game < Item 
  attr_accessor :multiplayer, :last_played_at

  def initialize(genre, author, label, multiplayer, last_played_at)
    @genre = genre
    @author = author
    @label = label 
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super
  end

  private 

  def can_be_archived? 
    publish_datetime = DateTime.parse(@publish_date)
    ((Date.today - publish_datetime).to_i / 365) > 10
    publish_datetime
  end

end

