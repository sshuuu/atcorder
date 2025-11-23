num_length, target_num = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

all_sum = nums.sum

result = "No"
nums.each do |num|
  if all_sum - num == target_num
    result = "Yes"
    break
  end
end

puts result
