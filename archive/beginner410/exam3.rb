n, query_num = gets.chomp.split(" ").map(&:to_i)

numbers = 1.upto(n).to_a
head_num = 0

results = []
query_num.times do
  query = gets.chomp.split(" ").map(&:to_i)
  if query[0] == 1
    change_index = (head_num + (query[1] - 1)) % n
    numbers[change_index] = query[2]
  elsif query[0] == 2
    results << numbers[(head_num + (query[1] - 1)) % n]
  else
    head_num = (head_num + query[1]) % n
  end
end

puts results
