ingredients_len, dish_len = gets.split(" ").map(&:to_i)

dish_ingredients = []


dish_len.times do
  ingredients_num, *ingredients_idxs = gets.split(" ").map(&:to_i)
  dish_ingredients << ingredients_idxs
end


day_ingredients = gets.split(" ").map(&:to_i)
eatable_day_dp = Array.new(day_ingredients.length, 0)

dish_ingredients.each do |ingredients|
  max_idx = 0
  ingredients.each do |ingredient|
    idx = day_ingredients.index(ingredient) || 999_999_999
    if max_idx < idx
      max_idx = idx
    end
  end
  if max_idx == 999_999_999
  else
    eatable_day_dp[max_idx] += 1
  end
end

eatable_dish_num = 0

eatable_day_dp.each do |dp|
  eatable_dish_num += dp
  puts eatable_dish_num
end

# day_ingredients.each do |ingredient|
#   delete_idx = []
#   dish_ingredients.each.with_index do |ingredients, i|
#     ingredients.delete(ingredient)
#     if ingredients.empty?
#       eatable_dish_num += 1
#       delete_idx << i
#     end
#   end

#   delete_idx.sort.reverse.each do |idx|
#     dish_ingredients.delete_at(idx)
#   end
#   puts eatable_dish_num
# end

