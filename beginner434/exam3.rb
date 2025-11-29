testcase_len = gets.chomp.to_i

results = []
testcase_len.times do
  halfway_point_len, first_height = gets.chomp.split.map(&:to_i)

  halfway_points = Array.new(halfway_point_len) { Array.new(3) }
    halfway_point_len.times do |i|
    elapsed_sec, min_height, max_height = gets.chomp.split.map(&:to_i)
    halfway_points[i] = [elapsed_sec, min_height, max_height]
  end

  is_possible = true
  before_min_height = before_max_height = first_height
  before_elapsed_sec = 0
  halfway_points.each do |elapsed_sec, min_height, max_height|
    # 最低高度の確認
    movable_min_height = before_min_height - (elapsed_sec - before_elapsed_sec)
    # 最高高度の確認
    movable_max_height = before_max_height + (elapsed_sec - before_elapsed_sec)

    if movable_max_height < min_height || movable_min_height > max_height
      is_possible = false
      break
    end

    before_min_height = [movable_min_height, min_height].max
    before_max_height = [movable_max_height, max_height].min
    before_elapsed_sec = elapsed_sec
    # puts "before_min_height: #{before_min_height}, before_max_height: #{before_max_height}"
  end

  results << (is_possible ? "Yes" : "No")
end

puts results
