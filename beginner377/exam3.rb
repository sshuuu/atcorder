board_length, piece_num = gets.chomp.split(" ").map(&:to_i)
unplaceable_positions = []
piece_num.times do
  i, j = gets.chomp.split(" ").map(&:to_i)
  unplaceable_positions << [i, j]
  if i >= 3
    if j >= 2
      unplaceable_positions << [i-2, j-1]
    end
    if j <= board_length - 1
      unplaceable_positions << [i-2, j+1]
    end
  end
  if i <= board_length - 2
    if j >= 2
      unplaceable_positions << [i+2, j-1]
    end
    if j <= board_length - 1
      unplaceable_positions << [i+2, j+1]
    end
  end

  if i >= 2
    if j >= 3
      unplaceable_positions << [i-1, j-2]
    end
    if j <= board_length - 2
      unplaceable_positions << [i-1, j+2]
    end
  end
  if i <= board_length - 1
    if j >= 3
      unplaceable_positions << [i+1, j-2]
    end
    if j <= board_length - 2
      unplaceable_positions << [i+1, j+2]
    end
  end
end

puts (board_length * board_length) - unplaceable_positions.uniq.size
