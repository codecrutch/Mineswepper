class Board
  attr_reader :grid

  def initialize(gridsize = 9)
    @grid = create_grid(gridsize)
  end


  def populate_grid
    grid.length.times do |row|
      grid.length.times do |col|
        grid[row][col] = 0
      end
    end
  end

  def create_grid(size)
    Array.new(size) { Array.new(size) }
  end

end
