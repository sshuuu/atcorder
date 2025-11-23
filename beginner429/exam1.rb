line, max_line = gets.chomp.split.map(&:to_i)

line.times do |i|
  if i < max_line
    puts "OK"
  else
    puts "Too Many Requests"
  end
end