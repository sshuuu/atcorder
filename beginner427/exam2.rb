num = gets.chomp.to_i

result = 1
(num - 1).times do |i|
  # resultの各桁の合計
  result.to_s.chars.map(&:to_i).sum.times do
    result += 1
  end
end

puts result
