str = gets.chomp

target = str.length / 2
# target版目の文字を削除
str.slice!(target)

puts str
