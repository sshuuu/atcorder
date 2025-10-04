n, m = gets.chomp.split(" ").map(&:to_i)

cycle_arr = Array.new(n) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  cycle_arr[a - 1] << b - 1
  cycle_arr[b - 1] << a - 1
end

if n != m
  puts "No"
  exit
end

before_num = 0
current_num = cycle_arr[0].first

loop_count = 1
while true
  loop_count += 1

  arr = cycle_arr[current_num]
  arr.delete(before_num)

  if arr.empty? || arr.first == 0
    break
  end

  before_num = current_num
  current_num = arr.first
end

if loop_count == n
  puts "Yes"
else
  puts "No"
end

# remain_map = Array.new(n, 2)

# m.times do
#   a, b = gets.chomp.split(" ").map(&:to_i)
#   remain_map[a - 1] -= 1
#   remain_map[b - 1] -= 1
# end

# if n == m && remain_map.all? { |x| x == 0 }
#   puts "Yes"
# else
#   puts "No"
# end
