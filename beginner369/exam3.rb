length = gets.to_i
nums = gets.split.map(&:to_i)

result = 0
start_pos = 0
current_pos = 0

# 長さ１の数列分を加算しておく
result += length

while current_pos < length - 1
  prev_diff = nil
  diff_equal = true

  # 等差である場合はループさせる
  while diff_equal
    next_pos = current_pos + 1
    if next_pos >= length
      break
    end
    diff = nums[next_pos] - nums[current_pos]
    if prev_diff == nil
      prev_diff = diff
    end

    # 等差ではない場合
    if prev_diff != diff
      result += (1..(current_pos-start_pos)).sum
      start_pos = current_pos
      diff_equal = false
    else
      # 等差の場合
      current_pos += 1
    end
  end
end

result += (1..(current_pos-start_pos)).sum

puts result
