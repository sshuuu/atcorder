push_num = gets.to_i

# 前回の手の位置
prev_right_pos = 0
prev_left_pos = 0
# 疲労度
fatigue = 0

push_num.times do
  row = gets.split
  pos = row[0].to_i
  hand = row[1]

  if hand == "R"
    if prev_right_pos > 0
      fatigue += (pos - prev_right_pos).abs
    end
    prev_right_pos = pos
  else
    if prev_left_pos > 0
      fatigue += (pos - prev_left_pos).abs
    end
    prev_left_pos = pos
  end
end

puts fatigue
