board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

def print_grid(board)
  board.each_with_index do |array, line_index|
    array.each_with_index do |tile, tile_index|
      if tile.nil?
        print "  "
      else
        print " #{tile}"
      end

      if line_index != 2
        if tile_index == 2
          puts "\n-----------"
        else
          print " |"
        end
      else
        if tile_index == 2
          puts " "
        else
          print " |"
        end
      end
    end
  end
end

print_grid(board_a)
puts " "

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

print_grid(board_b)
