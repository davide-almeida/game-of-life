class GameOfLife
  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @grid = Array.new(rows) { Array.new(cols) { rand(2) } }
  end

  def display_grid
    @grid.each do |row|
      puts row.map { |cell| cell == 1 ? 'O' : '.' }.join(' ')
    end
  end

  def next_generation
    new_grid = Array.new(@rows) { Array.new(@cols) }

    @rows.times do |row|
      @cols.times do |col|
        new_grid[row][col] = next_state(row, col)
      end
    end

    @grid = new_grid
  end

  private

  def next_state(row, col)
    alive_neighbors = count_alive_neighbors(row, col)

    if @grid[row][col] == 1
      return 1 if alive_neighbors == 2 || alive_neighbors == 3
      return 0
    else
      return 1 if alive_neighbors == 3
      return 0
    end
  end

  def count_alive_neighbors(row, col)
    directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [0, -1],         [0, 1],
      [1, -1], [1, 0], [1, 1]
    ]

    directions.count do |dx, dy|
      new_row, new_col = row + dx, col + dy
      next if new_row < 0 || new_row >= @rows || new_col < 0 || new_col >= @cols

      @grid[new_row][new_col] == 1
    end
  end
end

# Configuração inicial
game = GameOfLife.new(10, 10)

# Exibição da grade inicial
puts "Geração Inicial:"
game.display_grid

# Simulação de 5 gerações
5.times do |i|
  game.next_generation
  puts "\nGeração #{i + 1}:"
  game.display_grid
end
