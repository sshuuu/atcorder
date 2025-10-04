target_num = gets.chomp.to_i

result = 0

# 9x9の計算を行う
0.upto(9) do |i|
  0.upto(9) do |j|
    product = i * j
    if product != target_num
      result += product
    end
  end
end

puts result
