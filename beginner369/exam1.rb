nums = gets.split.map(&:to_i)
nums.sort!

result = 0

# 同値だったら1つしかない
if nums[0] == nums[1]
  puts 1
  return
end

# 2つの差が奇数だったら2つしかない
if (nums[1] - nums[0]) % 2 == 1
  puts 2
  return
end

puts 3
