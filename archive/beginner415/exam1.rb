len = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)
target_num = gets.chomp.to_i

if nums.include?(target_num)
    puts "Yes"
else
    puts "No"
end
