small_num, large_num = gets.chomp.split(" ").map(&:to_i)
small_num -= 1

# 蛇数を求める
# 先頭が１の場合: 10, 100, 1000...
# 先頭が２の場合: 20, 21, 200, 201, 210, 211...
# 先頭が３の場合: 30, 31, 32, 300, 301, 302, 310, 311, 312, 320, 321, 322...

# large_numまでの蛇数を求める

large_num_result = 0

head_num = 1
power_num = 1

loop_remain = 10000
while loop_remain > 0
  loop_remain -= 1
  large_num_result += head_num ** power_num
  
  head_num += 1
  if head_num == 10
    head_num = 1
    power_num += 1
  end

  puts "large_num_result: #{large_num_result}"

  if (head_num + 1) * (10 ** power_num) > large_num
    break
  end
end


large_num_array = large_num.to_s.split("").map(&:to_i).reverse
# 末尾を削除
large_num_array.pop
puts "large_num_array: #{large_num_array}"

large_num_array.each_with_index do |num, index|
  top_num = [num+1, head_num].min
  if index > 0 && (num == 0)
    next
  end
  large_num_result += top_num * (head_num ** index)
end
puts "large_num_result_fin: #{large_num_result}"


# small_numまでの蛇数を求める
small_num_result = 0

head_num = 1
power_num = 1

loop_remain = 10000
while loop_remain > 0
  loop_remain -= 1
  small_num_result += head_num ** power_num
  
  head_num += 1
  if head_num == 10
    head_num = 1
    power_num += 1
  end

  if (head_num + 1) * (10 ** power_num) > small_num
    break
  end
end


small_num_array = small_num.to_s.split("").map(&:to_i).reverse
# 末尾を削除
small_num_array.pop

small_num_array.each_with_index do |num, index|
  top_num = [num+1, head_num].min
  small_num_result += top_num * (head_num ** index)
end
puts "small_num_result: #{small_num_result}"



puts large_num_result - small_num_result
