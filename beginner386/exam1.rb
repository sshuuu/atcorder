nums = gets.chomp.split(" ").map(&:to_i)
nums.uniq!

if nums.length == 2
  puts "Yes"
else
  puts "No"
end
