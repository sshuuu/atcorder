combination_num = gets.to_i
array_row_count = combination_num * combination_num
array_column_count = combination_num

two_dimensional_array = []

array_row_count.times do
  array_row = gets.chomp.split(" ").map(&:to_i)
  two_dimensional_array << array_row
end

query_count = gets.to_i

query_count.times do
  query = gets.chomp.split(" ").map(&:to_i)

end



# x ... rowが n*(Lxi-1)+1 ~ n*Lxi
# y ... rowが n*Lyiのもの
# z ... columnが Lziの
