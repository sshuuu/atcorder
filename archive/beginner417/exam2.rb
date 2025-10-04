num_len, delete_len = gets.chomp.split(" ").map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i)
delete_nuns = gets.chomp.split(" ").map(&:to_i)

delete_nuns.each do |num|
    nums.delete_at(nums.index(num)) if nums.include?(num)
end

puts nums.join(" ")