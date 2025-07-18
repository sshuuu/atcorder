food_count, sweet_value_th, salty_value_th = gets.split.map(&:to_i)
sweet_values = gets.split.map(&:to_i)
salty_values = gets.split.map(&:to_i)

sweet_values.sort!.reverse!
salty_values.sort!.reverse!

sweet_value_sum = 0
sweet_eat_count = 0
sweet_values.each do |sweet_value|
  sweet_eat_count += 1
  sweet_value_sum += sweet_value
  if sweet_value_sum > sweet_value_th
    break
  end
end

salty_value_sum = 0
salty_eat_count = 0
salty_values.each do |salty_value|
  salty_eat_count += 1
  salty_value_sum += salty_value
  if salty_value_sum > salty_value_th
    break
  end
end

# sweet_eat_countとsalty_eat_countの小さい方を出力
puts [sweet_eat_count, salty_eat_count].min

