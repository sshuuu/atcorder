h, w = gets.chomp.split(" ").map(&:to_i)

field = []

h.times do
  field << gets.chomp.split("")
end

first_black_h_index = nil
field.each.with_index do |row, i|
  if row.include?("#")
    first_black_h_index = i
    break
  end
end

# 一つも黒がない場合の処理
if first_black_h_index.nil?
  # 一つでも?があればYes
  if field.any?{|row| row.include?("?")}
    puts "Yes"
  else
    puts "No"
  end
  return
end

last_black_h_index = nil
field.reverse.each.with_index do |row, i|
  if row.include?("#")
    last_black_h_index = h - i - 1
    break
  end
end

first_black_w_index = nil
transpose_field = field.transpose
transpose_field.each.with_index do |col, i|
  if col.include?("#")
    first_black_w_index = i
    break
  end
end

last_black_w_index = nil
transpose_field.reverse.each.with_index do |col, i|
  if col.include?("#")
    last_black_w_index = w - i - 1
    break
  end
end


field[first_black_h_index..last_black_h_index].each.with_index do |row, i|
  if row[first_black_w_index..last_black_w_index].include?(".")
    puts "No"
    return
  end
end

puts "Yes"
