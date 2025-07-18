i = gets.to_i
couple_count = 0

colors = gets.chomp.split(" ")
colors.each_with_index do |color, i|
  if i >= 2
    if colors[i-2] == color
      couple_count += 1
    end
  end
end

puts couple_count
