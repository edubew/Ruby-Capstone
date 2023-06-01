
# Genre class for adding Genres name
class Genre
  attr_reader :name

  def initialize(name)
    @id = Random.rand(1..1_000_000)
    @name = name
    @items = []
  end

end
