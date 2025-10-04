bard_num, query_len = gets.chomp.split(" ").map(&:to_i)

bard_nests = Array.new(bard_num) { nil }

result = []
query_len.times do
  command, to, from = gets.chomp.split(" ").map(&:to_i)

  if command == 1
    if bard_nests[to-1] == 
    bard_nests[to-1] = from
  elsif command == 2
    result << bard_nests.select{|v| bard_nests.count(v) > 1}.uniq.length
  end
end

puts result
