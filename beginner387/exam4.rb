side_len, painted_area_num = gets.chomp.split(" ").map(&:to_i)
painted_areas = []

painted_area_num.times do
  painted_areas << gets.chomp.split(" ")
end

