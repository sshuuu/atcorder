luggage_count = gets.to_i
luggage_box_indexes = gets.chomp.split(" ")
weights = gets.chomp.split(" ")
sum_weight = 0

dp = Array.new(luggage_count+1, 0)
luggage_count.times do |i|
  if dp[luggage_box_indexes[i].to_i] == 0
    dp[luggage_box_indexes[i].to_i] = weights[i].to_i
  elsif dp[luggage_box_indexes[i].to_i] < weights[i].to_i
    sum_weight += dp[luggage_box_indexes[i].to_i]
    dp[luggage_box_indexes[i].to_i] = weights[i].to_i
  else
    sum_weight += weights[i].to_i
  end
end

puts sum_weight
