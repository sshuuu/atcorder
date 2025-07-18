length = gets.chomp.to_i

total_char_len = 0
is_too_long = false
result = []


length.times do
  char, char_len = gets.chomp.split(" ")
  char_len = char_len.to_i
  if is_too_long
    next
  end

  total_char_len += char_len
  if total_char_len > 100
    is_too_long = true
  else
    result << char * char_len
  end  
end

if is_too_long
  puts "Too Long"
else
  puts result.join
end
