str_len, prefix_del, suffix_del = gets.chomp.split(" ").map(&:to_i)
str = gets.chomp

str_len = str_len - prefix_del - suffix_del
substring = str[prefix_del, str_len]

puts substring
