int = gets.chomp.split("")

one = 0
two = 0
three = 0

int.each do |i|
  if i == "1"
    one += 1
  elsif i == "2"
    two += 1
  elsif i == "3"
    three += 1
  end
end

if one == 1 && two == 2 && three == 3
  puts "Yes"
else
  puts "No"
end
