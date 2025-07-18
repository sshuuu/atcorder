len = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)

first_num = nums.shift
second_num = nums[0]

common_ratio = (second_num / first_num.to_f)

current_num = first_num
nums.each do |num|
  current_num *= common_ratio
  if num != current_num
    puts "No"
    exit
  end
end

puts "Yes"
