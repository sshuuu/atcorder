len = gets.to_i
nums = gets.split.map(&:to_i)

second_val = nums.sort[-2]
puts nums.index(second_val) + 1
