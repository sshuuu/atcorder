# num_len = gets.chomp.to_i
# nums = gets.chomp.split(" ").map(&:to_i)

# result = 0
# nums.each.with_index do |i_num, idx|
#     first_idx = idx + 1
#     scan_nums = nums[first_idx+i_num..-1]
#     next if scan_nums.nil? || scan_nums.empty?
#     scan_nums.each.with_index do |j_num, jdx|
#         second_idx = jdx + first_idx + i_num + 1
#         if (second_idx - first_idx) == (i_num + j_num)
#             result += 1
#         end
#     end
# end

# puts result

num_len = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)

num_arr = Array.new(num_len, 0)

ans = 0
nums.each.with_index do |num, idx|
    ans += num_arr[idx - num]
    next if idx + num >= num_len
    num_arr[idx + num] += 1
    puts "num: #{num}, idx: #{idx} ans: #{ans}, num_arr: #{num_arr}"
end

puts ans
