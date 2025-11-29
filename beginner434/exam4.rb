cloud_num = gets.chomp.to_i
positions = Array.new(2000) { Array.new(2000) { [] } }

cloud_positions = Array.new(cloud_num) { Array.new(4) }

cloud_num.times do |cloud_index|
  up, down, left, right = gets.chomp.split.map(&:to_i)
  cloud_positions[cloud_index] = [up, down, left, right]
  up.upto(down) do |i|
    left.upto(right) do |j|
      positions[i][j] << cloud_index + 1
    end
  end
end

empty_count = 0
positions.each do |row|
  row.each do |cell|
    if cell.empty?
      empty_count += 1
    end
  end
end

cloud_positions.each do |up, down, left, right|
  area = (down - up + 1) * (right - left + 1)
  empty_in_area = 0
  up.upto(down) do |i|
    left.upto(right) do |j|
      if positions[i][j].empty?
        empty_in_area += 1
      end
    end
  end
  puts (area - empty_in_area) + empty_count
end

