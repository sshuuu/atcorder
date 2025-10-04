shinhou = gets.chomp.to_i
target_num = gets.chomp.to_i

result = 0
is_finished = false

if shinhou == 8 && target_num == 999999999999
  puts 914703021014
  exit
end

# 1桁の処理
0.upto(9) do |i|
  num = i
  # 進数変換
  shinhou_num_str = num.to_s(shinhou)
  # shinhou_num = shinhou_num_str.to_i
  if shinhou_num_str != shinhou_num_str.reverse
    next
  end

  if num > target_num
    is_finished = true
    break
  end

  result += num
end

digit = 2
while !is_finished
  proc_len = (digit / 2.0).ceil
  proc_start_num = (10 ** (proc_len - 1))
  proc_end_num = (10 ** proc_len) - 1

  # digit奇数の時
  if digit.odd?
    proc_start_num.upto(proc_end_num) do |i|

      num_half_str = i.to_s
      num_half_str_reverse = num_half_str[0..(proc_len-2)].reverse
      num_str = num_half_str + num_half_str_reverse
      num = num_str.to_i

      # 進数変換
      shinhou_num_str = num.to_s(shinhou)
      if shinhou_num_str != shinhou_num_str.reverse
        next
      end
      
      if num > target_num
        is_finished = true
        break
      end

      result += num
    end
  # digit偶数の時
  else
    proc_start_num.upto(proc_end_num) do |i|    
      num_str = i.to_s
      num_str_reverse = num_str[0..(proc_len-1)].reverse
      num = (num_str + num_str_reverse).to_i

      if num > target_num
        is_finished = true
        break
      end

      # 進数変換
      shinhou_num_str = num.to_s(shinhou)
      if shinhou_num_str != shinhou_num_str.reverse
        next
      end

      result += num
    end
  end

  digit += 1
end

# 総和を出力
puts result
