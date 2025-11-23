x, y = gets.chomp.split(" ").map(&:to_i)

pre_1 = x
pre_2 = y
tmp = 0

8.times do
    tmp = pre_2 + pre_1
    tmp = tmp.to_s.reverse!.to_i
    pre_1 = pre_2
    pre_2 = tmp
end

puts tmp
