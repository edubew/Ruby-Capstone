# frozen_string_literal: true

require 'date'

# Book class that inherits from Item class and defines the attributes of a book
class Item
  attr_accessor :publish_date, :author, :label, :genre, :archived

  def initialize(publish_date)
    Random.rand(1..1_000_000)
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive?
    @archived = true if can_be_archived?
    @archived
  end

  private

  # def can_be_archived?
  #   ((Date.today - Date.parse(@publish_date)).to_i / 365) > 10
  # end

  def can_be_archived?
    @publish_date = Date.parse(@publish_date) unless @publish_date.is_a?(Date)
    today = Date.today
    ten_years_ago = (today - (10 * 365))
    @publish_date < ten_years_ago
  end
end
