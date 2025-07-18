len = gets.chomp.to_i

str = "-" * len
# 中央のみ "="に変更
if len % 2 == 0
  str[len / 2 - 1] = "="
  str[len / 2] = "="
else
  str[len / 2] = "="
end

puts str
