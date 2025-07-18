connected_dashed = gets.chomp.split("|")

# 最初の要素を捨てる
connected_dashed.shift

connected_dashed_lengths = []
connected_dashed.each do |connected_dash|
  connected_dashed_lengths << connected_dash.length
end

puts connected_dashed_lengths.join(" ")
