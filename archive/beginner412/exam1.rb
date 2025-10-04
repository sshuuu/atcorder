day_num = gets.chomp.to_i
total_achieve_num = 0

day_num.times do
  target_num, achieve_num = gets.chomp.split.map(&:to_i)
  if achieve_num > target_num
    total_achieve_num += 1
  end
end

puts total_achieve_num
