l,r = gets.split.map(&:to_i)

if l+r != 1
  puts "Invalid"
elsif l == 1
  puts "Yes"
else
  puts "No"
end
