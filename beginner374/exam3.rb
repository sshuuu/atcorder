$department_len = gets.chomp.to_i
$person_nums = gets.chomp.split(" ").map(&:to_i)

# 合計人数
$sum_person_num = $person_nums.inject(:+)

# 合計人数の半分の人数
$threshold_person_num = ($sum_person_num / 2.0).floor

# 最も半分の人数に近い数字（初期値は無限大）
$min_diff = Float::INFINITY
$result_person_num = 0

def saiki(current_idx, current_person_num)
  
  while current_idx < $department_len
    after_person_num = current_person_num + $person_nums[current_idx]

    # 人数が半分以上になったら終了
    if after_person_num > $threshold_person_num
      current_idx += 1      
      next after_person_num
    end
    
    # もっとも小さい差を更新
    diff = ($threshold_person_num - after_person_num).abs
    if diff < $min_diff
      $min_diff = diff
      $result_person_num = $sum_person_num - [after_person_num, $threshold_person_num].min
    end

    saiki(current_idx + 1, after_person_num)
    current_idx += 1      
  end

end

saiki(0, 0)

puts $result_person_num
