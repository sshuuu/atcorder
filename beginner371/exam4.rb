village_len = gets.to_i
village_poses = gets.split.map(&:to_i)
villager_nums = gets.split.map(&:to_i)
cumulative_villager_nums = Array.new(village_len, 0)

# 累積和を求める
villager_nums.each_with_index do |villager_num, i|
  if i == 0
    cumulative_villager_nums[i] = villager_num
  else
    cumulative_villager_nums[i] = cumulative_villager_nums[i-1] + villager_num
  end
end

query_len = gets.to_i
results = []

query_len.times do
  left_pos, right_pos = gets.split.map(&:to_i)
  # 二部探索を利用して、village_posesの中でleft_posより大きいの最小のindexを求める
  left_index = village_poses.bsearch_index { |village_pos| village_pos >= left_pos }
  if left_index == nil
    left_index = village_len - 1
  else
    left_index -= 1
  end
  # puts "left_index: #{left_index}"
  
  # 二部探索を利用して、village_posesの中でright_posより大きいの最小のindexを求める
  right_index = village_poses.bsearch_index { |village_pos| village_pos > right_pos }
  # puts "right_index: #{right_index}"
  # right_indexがnilの場合はvillage_len-1を入れておく
  if right_index == nil
    right_index = village_len - 1
  else
    right_index -= 1
  end
  # puts "left_index: #{left_index}, right_index: #{right_index}"

  max = cumulative_villager_nums[right_index]
  diff = 0
  if left_index >= 0
    diff = cumulative_villager_nums[left_index]
  end
  # puts "max: #{max}, diff: #{diff}"
  results << max - diff
end

puts results
