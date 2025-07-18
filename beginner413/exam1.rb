goods_num, cap = gets.chomp.split(" ").map(&:to_i)
goods_sizes = gets.chomp.split(" ").map(&:to_i)

if goods_sizes.sum > cap
  puts "No"
else
  puts "Yes"
end
