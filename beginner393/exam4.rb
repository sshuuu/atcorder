bits_num = gets.to_i
bits_str = gets.chomp

# 1が1つだけの場合は0
if bits_str.count("1") == 1
  puts 0
  return
end

max_loop = 1000000
loop_count = 0

left_idx = 0
right_idx = bits_num - 1

left_1_count = 0
left_move_count = 0
right_1_count = 0
right_move_count = 0

current_tarn = 0 # 0: left, 1: right
while true
  loop_count += 1
  if loop_count > max_loop
    puts "-1"
    return
  end

  if current_tarn == 0
    if bits_str[left_idx] == "1"
      left_1_count += 1
      if left_1_count > 1 && left_1_count > right_1_count
        current_tarn = 1
      end
    else
      left_move_count += left_1_count
    end
    left_idx += 1
  else
    if bits_str[right_idx] == "1"
      right_1_count += 1
      if right_1_count > 1 && right_1_count > left_1_count
        current_tarn = 0
      end
    else
      right_move_count += right_1_count
    end
    right_idx -= 1
  end

  # puts "current_tarn: #{current_tarn}, left_1_count: #{left_1_count}, right_1_count: #{right_1_count}, left_move_count: #{left_move_count}, right_move_count: #{right_move_count}, left_idx: #{left_idx}, right_idx: #{right_idx}"

  if left_idx > right_idx
    break
  end
  
end

move_count = left_move_count + right_move_count

# 左側から1を寄せる処理
# left_1_count = 0
# left_move_count = 0
# left_move_count_stack = 0
# last_left_mass1_index = 0

# # 右側から1を寄せる処理
# right_1_count = 0
# right_move_count = 0
# right_move_count_stack = 0
# last_right_mass1_index = bits_num - 1

# 0.upto(bits_num - 1) do |i|
#   # 1の数を加算
#   if bits_str[i] == "1"
#     left_1_count += 1
#   end

#   if bits_str[-(i+1)] == "1"
#     right_1_count += 1
#   end

#   # 0の場合、1を寄せる
#   if bits_str[i] == "0"
#     if left_1_count <= 1 || left_1_count <= right_1_count    
#       left_move_count += left_1_count + left_move_count_stack
#       left_move_count_stack = 0
#     else # 寄せるべきだったが、寄せなかった分
#       left_move_count_stack += left_1_count
#     end
#   end

#   if bits_str[-(i+1)] == "0"
#     if right_1_count <= 1 || right_1_count <= left_1_count
#       right_move_count += right_1_count + right_move_count_stack
#       right_move_count_stack = 0
#     else
#       right_move_count_stack += right_1_count
#     end
#   end

#   # last_mass1_indexを更新
#   if bits_str[i] == "1" && left_move_count_stack == 0
#     last_left_mass1_index = i
#   end

#   if bits_str[-(i+1)] == "1" && right_move_count_stack == 0
#     last_right_mass1_index = bits_num - (i+1)
#   end

#   # last_left_mass1_indexとlast_right_mass1_indexの絶対値が1以下の場合、処理を終了
#   if (last_left_mass1_index - last_right_mass1_index).abs <= 1
#     break
#   end
# end

# 要素の数が奇数かつ中央が0の場合、left_1_countとright_1_countの小さい方を加算する
# if bits_num.odd? && bits_str[bits_num/2] == "0"
#   move_count += [left_1_count, right_1_count].min
# end

puts move_count
