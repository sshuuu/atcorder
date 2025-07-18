str = gets.chomp
query_length = gets.chomp.to_i
query_numbers = gets.chomp.split(" ").map(&:to_i)

str_length = str.length

result = []
query_numbers.each do |query_number|
  # 元の文字サイズのままか判定
  is_neutral = ((query_number-1) / str_length) % 2 == 0
  str_order = (query_number-1) % str_length

  if is_neutral
    result << str[str_order]
  else
    result << str[str_order].swapcase
  end
end

puts result.join(" ")
