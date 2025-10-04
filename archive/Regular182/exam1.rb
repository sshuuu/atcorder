num_len, query_len = gets.split.map(&:to_i)

nums = Array.new(num_len, 0)
# prev_val = 0
# prev_small_val = 0

arr_p_and_v = []

query_len.times do |i|
  p_and_v = gets.split.map(&:to_i)
  arr_p_and_v << p_and_v

  prev_pos = arr_p_and_v[i-1][0]
  prev_val = arr_p_and_v[i-1][1]
  pos = p_and_v[0]
  val = p_and_v[1]

  # 0 ... どちらでも, 1 ... posより大きい方, -1 ... posより小さい方
  fix_pos = 0
  
  while prev_val > val
    # もしprev_posとposが同じなら0を出力して終了
    if prev_pos == pos
      puts 0
      return
    end

    if prev_pos > pos
      fix_pos = 1 if fix_pos == "0"
      nums.fill(prev_val, prev_pos..num_len-1)
    else
      fix_pos = -1 if fix_pos == "0"
      nums.fill(prev_val, 0..prev_pos)
    end

    i -= 1
    if i < 0
      break
    end

    prev_pos = arr_p_and_v[i-1][0]
    prev_val = arr_p_and_v[i-1][1]
  end


  # if prev_val > val
    
  # end

  prev_val = val
end
