space_length, placed_stone_space_num = gets.chomp.split(" ").map(&:to_i)
placed_stone_spaces = gets.chomp.split(" ").map(&:to_i)
placed_stone_nums = gets.chomp.split(" ").map(&:to_i)

placed_stone_spaces_and_nums = placed_stone_spaces.zip(placed_stone_nums)
placed_stone_spaces_and_nums.sort_by!{|x| x[0]}

placed_stone_spaces = placed_stone_spaces_and_nums.map{|x| x[0]}
placed_stone_nums = placed_stone_spaces_and_nums.map{|x| x[1]}

# 一旦全ての石が1のマスに置かれた場合の移動回数を求める
move_count = (space_length-1) * space_length / 2

# 全てのマスに石を一つずつ置けるかを確認する
if placed_stone_spaces[0] != 1
  puts -1
  exit
end

if placed_stone_nums.sum != space_length
  puts -1
  exit
end

stone_amount = 0
(placed_stone_space_num - 1).times.each do |i|
  stone_amount += placed_stone_nums[i]
  if stone_amount < (placed_stone_spaces[i+1] - 1)
    puts -1
    exit
  end
end

# 置かれた石のマスに合わせて移動回数を減らす
placed_stone_space_num.times.each do |i|
  if placed_stone_spaces[i] == 1
    next
  end

  move_count -= (placed_stone_spaces[i] - 1) * placed_stone_nums[i]
end

puts move_count
