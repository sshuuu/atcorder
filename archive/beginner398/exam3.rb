len = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)

target = nums.group_by(&:itself).map{|k, v| [k, v.size]}.sort_by{|k, v| -k}.find { |k, v| v == 1 }
if target
  puts nums.index(target[0]) + 1
else
  puts -1
end
