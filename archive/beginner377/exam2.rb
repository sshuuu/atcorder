placeable_fields = []
8.times do
  placeable_fields_row = [1,1,1,1,1,1,1,1]
  placeable_fields << placeable_fields_row
end

8.times do |i|
  field_cells = gets.chomp.split("")
  field_cells.each_with_index do |cell, j|  
    if cell == "#"
      (0..7).each do |k|
        placeable_fields[i][k] = 0
        placeable_fields[k][j] = 0
      end
    end
  end
end

result = 0
placeable_fields.each do |row|
  result += row.count(1)
end

puts result
