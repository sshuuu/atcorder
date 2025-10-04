nums = gets.chomp.split(" ").map(&:to_i)
# numsを合計して二乗する
sum = nums.inject(:+)
sum = sum ** 2
puts sum
