num_length = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

num_counts = Array.new(num_length, 0)

result = 0

# add_pattern_countを再利用できるようにする
add_pattern_counts = Array.new(num_length, 0)

num_count = 0
current_num = nums[0]
nums.sort.each do |num|
  if current_num == num
    num_count += 1
  else
    if num_count >= 2
      if add_pattern_counts[num_count - 1] > 0
        result += add_pattern_counts[num_count - 1]
      elsif num_count == 2
        rest_num_count = num_length - num_count
        combination_count = 1
        add_pattern_count = rest_num_count * combination_count
        add_pattern_counts[num_count - 1] = add_pattern_count
        result += add_pattern_count
      elsif num_count > 2
        rest_num_count = num_length - num_count
        combination_count = (1..num_count).inject(:*) / (2 * (1..(num_count - 2)).inject(:*))
        add_pattern_count = rest_num_count * combination_count
        add_pattern_counts[num_count - 1] = add_pattern_count
        result += add_pattern_count
      end
    end

    # 次回の数字を設定
    current_num = num
    num_count = 1
  end
end

# 最後の数字の処理
if num_count >= 2
  if add_pattern_counts[num_count - 1] > 0
    result += add_pattern_counts[num_count - 1]
  elsif num_count == 2
    rest_num_count = num_length - num_count
    combination_count = 1
    add_pattern_count = rest_num_count * combination_count
    result += add_pattern_count
  elsif num_count > 2
    rest_num_count = num_length - num_count
    combination_count = (1..num_count).inject(:*) / (2 * (1..(num_count - 2)).inject(:*))
    add_pattern_count = rest_num_count * combination_count
    result += add_pattern_count
  end
end


# 各数字の出現回数をカウント
# nums.each do |num|
#   num_counts[num - 1] += 1
# end

# num_counts.each do |count|
#   if count >= 2
#     rest_num_count = num_length - count
#     if count == 2
#       if add_pattern_counts[count - 1] > 0
#         result += add_pattern_counts[count - 1]
#         next
#       end
#       combination_count = 1
#       add_pattern_count = rest_num_count * combination_count
#       add_pattern_counts[count - 1] += add_pattern_count
#       result += add_pattern_count
#     elsif count > 2
#       if add_pattern_counts[count - 1] > 0
#         result += add_pattern_counts[count - 1]
#         next
#       end
#       combination_count = (1..count).inject(:*) / (2 * (1..(count - 2)).inject(:*))
#       add_pattern_count = rest_num_count * combination_count
#       add_pattern_counts[count - 1] += add_pattern_count
#       result += add_pattern_count
#     end
#   end
# end

puts result
