require 'date'

class Item
  attr_accessor :publish_date, :author, :label, :genre, :archived

  def initialize(publish_date)
    id = Random.rand(1..1_000_000)
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive?
    @archived = true if can_be_archived?
    @archived
  end

  private

  def can_be_archived?
    ((Date.today - Date.parse(@publish_date)).to_i / 365) > 10
  end
end

item = Item.new('2012-12-12')
puts item.move_to_archive? 
