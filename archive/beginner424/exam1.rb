a,b,c = gets.chomp.split(" ").map(&:to_i)

if a == b || b == c || c == a
  puts "Yes"
else
  puts "No"
end
