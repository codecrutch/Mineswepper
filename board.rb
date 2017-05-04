require_relative "tile"

class Board
  attr_reader :grid

  def initialize(gridsize = 9)
    @grid = create_grid(gridsize)
    populate_grid
  end

  private

  def populate_grid
    grid.length.times do |row|
      grid.length.times do |col|
        bomb = (rand(1..100) % 2 == 0)
        grid[row][col] = Tile.new(bomb)
      end
    end
    grid
  end

  def create_grid(size)
    Array.new(size) { Array.new(size) }
  end
end
