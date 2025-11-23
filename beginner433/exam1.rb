age1, age2, multiple = gets.chomp.split.map(&:to_i)

while true
  if age1 == age2 * multiple
    puts "Yes"
    break
  elsif age1 < age2 * multiple
    puts "No"
    break
  else
    age1 += 1
    age2 += 1
  end
end

