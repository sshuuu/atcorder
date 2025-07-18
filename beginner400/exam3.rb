num = gets.chomp.to_i

# results = []
result = 0
a = 1
b = 1

while true do
  while true do
    # a離脱の条件
    if (2**a) * (b**2) > num || a >= 3
      break
    end
    # puts "#{a} #{b} #{(2**a) * (b**2)}"
    result += 1
    # results << (2**a) * (b**2)
    a += 1
  end
  # b離脱の条件
  if 2 * (b**2) > num
    break
  end
  b += 1
  a = 1
end

puts result
# puts results.uniq.count
