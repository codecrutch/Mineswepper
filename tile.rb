class Tile
  attr_reader :value

  def initialize(value = false)
    @value = value
  end

  def to_s
    if value
      "E"
    else
      "B"
    end
  end

  def inspect
    to_s
  end
end
