year = gets.to_i

if year % 400 == 0
  puts "366"
elsif year % 100 == 0
  puts "365"
elsif year % 4 == 0
  puts "366"
else
  puts "365"
end
