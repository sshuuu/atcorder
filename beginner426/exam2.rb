len = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)

positive_nums = nums.select { |n| n > 0 }

# 1以上の整数が重複している場合は"NO"を出力
if positive_nums.uniq.length != positive_nums.length
  puts "No"
  exit
end

puts "Yes"

not_assigned_nums = (1..len).to_a - positive_nums
result = []

nums.each do |n|
    if n > 0
        result << n
    else
        result << not_assigned_nums.shift
    end
end

puts result.join(" ")
