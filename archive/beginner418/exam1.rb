char_len = gets.chomp.to_i
string = gets.chomp

# 末尾がteaで終わるかどうかをチェック
if string[-3..-1] == "tea"
  puts "Yes"
else
  puts "No"
end
