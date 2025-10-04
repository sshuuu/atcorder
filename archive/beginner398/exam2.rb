nums = gets.chomp.split(" ").map(&:to_i)
# numsのそれぞれの数値の個数を大きい順に出力する
num_counts = nums.group_by(&:itself).map{|k, v| [k, v.size]}.sort_by{|k, v| -v}
if num_counts.length >= 2 && num_counts[0][1] >= 3 && num_counts[1][1] >= 2
  puts "Yes"
else
  puts "No"
end
