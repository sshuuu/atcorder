luggage_count = gets.to_i
luggage_box_indexes = gets.chomp.split(" ")
weights = gets.chomp.split(" ")
sum_weight = 0

luggage_count.times do |i|
  target_box_index = i + 1
  in_luggage_indexes = luggage_box_indexes.map.with_index{|box_index, index| index if box_index.to_i == target_box_index}.compact!
  max_weight = 0
  in_luggage_indexes.each do |index|
    weight = weights[index].to_i
    max_weight = weight if weight > max_weight
    sum_weight += weight
  end
  sum_weight -= max_weight
end

puts sum_weight
