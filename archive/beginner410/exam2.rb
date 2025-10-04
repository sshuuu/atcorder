box_count, ball_count = gets.chomp.split.map(&:to_i)
numbers = gets.chomp.split.map(&:to_i)
box_ball_nums = Array.new(box_count, 0)

results = []
numbers.each do |number|
  if (number >= 1)
    box_ball_nums[number - 1] += 1
    results << number
  else
    min_ball_num = box_ball_nums.min
    target_idx = box_ball_nums.index { |num| num == min_ball_num }
    box_ball_nums[target_idx] += 1
    results << target_idx + 1
  end
end

puts results
