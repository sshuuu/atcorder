three_chars = gets.chomp.split("")
if three_chars.sort.join == "ABC"
  puts "Yes"
else
  puts "No"
end
