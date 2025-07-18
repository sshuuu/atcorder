int_num = gets.to_i
integers = gets.split.map(&:to_i)

positive_count = integers.count
try_count = 0

while positive_count > 1
  try_count += 1
  integers.sort!.reverse!
  integers[0] -= 1
  if integers[0] == 0
    positive_count -= 1
  end

  integers[1] -= 1
  if integers[1] == 0
    positive_count -= 1
  end
end

puts try_count
