length = gets.to_i

s = []
t = []

length.times do
  s << gets.chomp.split("")
end

length.times do
  t << gets.chomp.split("")
end

operation_count = 0
current_s = s
max_match_count = 0

match_count_0degrees = 0
s.each_with_index do |s_row, i|
  s_row.each_with_index do |s_col, j|
    if s_col == t[i][j]
      match_count_0degrees += 1
    end
  end
end

max_match_count = match_count_0degrees

s_90degrees = s.transpose.map!(&:reverse)
match_count_90degrees = 0
s_90degrees.each_with_index do |s_row, i|
  s_row.each_with_index do |s_col, j|
    if s_col == t[i][j]
      match_count_90degrees += 1
    end
  end
end

if max_match_count < match_count_90degrees
  operation_count = 1
  current_s = s_90degrees
  max_match_count = match_count_90degrees
end

s_180degrees = s_90degrees.transpose.map!(&:reverse)
match_count_180degrees = 0
s_180degrees.each_with_index do |s_row, i|
  s_row.each_with_index do |s_col, j|
    if s_col == t[i][j]
      match_count_180degrees += 1
    end
  end
end

if max_match_count + 1 < match_count_180degrees
  operation_count = 2
  current_s = s_180degrees
  max_match_count = match_count_180degrees
end

s_270degrees = s_180degrees.transpose.map!(&:reverse)
match_count_270degrees = 0
s_270degrees.each_with_index do |s_row, i|
  s_row.each_with_index do |s_col, j|
    if s_col == t[i][j]
      match_count_270degrees += 1
    end
  end
end

if max_match_count + 2 < match_count_270degrees
  operation_count = 3
  current_s = s_270degrees
  max_match_count = match_count_270degrees
end


diff_count = 0
current_s.each_with_index do |s_row, i|
  s_row.each_with_index do |s_col, j|
    if s_col != t[i][j]
      diff_count += 1
    end
  end
end

operation_count += diff_count
puts operation_count
