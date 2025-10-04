n = gets.chomp.to_i

result = 0
(1..n).each do |i|
  result += (-1)**i * (i**3)
end

puts result
