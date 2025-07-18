num_str = gets.chomp

input_count = 0

while (num_str && num_str.length > 0)
  if num_str[0] == "0"
    if num_str[1] == "0"
      # 先頭の２文字を削除
      num_str = num_str[2..-1]
    else
      # 先頭の１文字を削除
      num_str = num_str[1..-1]
    end
  else
    # 先頭の１文字を削除
    num_str = num_str[1..-1]
  end
  input_count += 1
end

puts input_count
