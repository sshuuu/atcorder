kind_num = gets.chomp.to_i



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
