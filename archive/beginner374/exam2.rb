str1 = gets.chomp
str2 = gets.chomp

if str1 == str2
  puts 0
  exit 0
end

target_idx = 0
while true
  if str1[target_idx] != str2[target_idx]
    break
  end
  target_idx += 1
end

puts target_idx + 1
