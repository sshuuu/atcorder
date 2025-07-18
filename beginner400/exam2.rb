n, m = gets.split.map(&:to_i)

max_value = 10**9

result = 0
0.upto(m) do |i|
  result += n ** i
  if result > max_value
    puts "inf"
    exit
  end
end

puts result
