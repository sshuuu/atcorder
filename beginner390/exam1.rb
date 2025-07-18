
# 1,2,3,4,5がランダムの順番で入る
nums = gets.chomp.split(" ").map(&:to_i)

mismatch = 0
prev_mismatch = 999
continuous = false
nums.each.with_index(1) do |num, i|
  if num != i
    mismatch += 1
    if prev_mismatch == i - 1
      continuous = true
    else
      continuous = false
    end
    prev_mismatch = i
  end
end

if mismatch == 2 && continuous
  puts "Yes"
else
  puts "No"
end
