d = gets.chomp

if d == "N"
  puts "S"
elsif d == "S"
  puts "N"
elsif d == "W"
  puts "E"
elsif d == "E"
  puts "W"
elsif d == "NE"
  puts "SW"
elsif d == "SW"
  puts "NE"
elsif d == "NW"
  puts "SE"
elsif d == "SE"
  puts "NW"
else
  puts "Invalid"
end
