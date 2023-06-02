require 'date'

# Item class and defines the attributes of an item
class Item
  attr_accessor :publish_date, :archived
  attr_reader :author, :label, :genre

  def initialize(publish_date)
    Random.rand(1..1_000_000)
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive?
    @archived = true if can_be_archived?
    @archived
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  private

  def can_be_archived?
    @publish_date = Date.parse(@publish_date) unless @publish_date.is_a?(Date)
    today = Date.today
    ten_years_ago = (today - (10 * 365))
    @publish_date < ten_years_ago
  end
end
