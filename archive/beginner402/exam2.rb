query_len = gets.chomp.to_i

stack = []
output_nums = []
query_len.times do
  query, num = gets.split(" ").map(&:to_i)
  if query == 1
    stack << num
  else
    output_nums << stack.shift
  end
end

output_nums.each do |num|
  puts num
end
