query_count = gets.to_i

ball_nums = Array.new(1000001, 0)
ball_kind_count = 0

results = []
query_count.times do
  query_num, x = gets.split.map(&:to_i)
  if query_num == 1
    ball_nums[x] += 1
    if ball_nums[x] == 1
      ball_kind_count += 1
    end
  elsif query_num == 2
    ball_nums[x] -= 1
    if ball_nums[x] == 0
      ball_kind_count -= 1
    end
  else
    results << ball_kind_count
  end
end

puts results
