target_num = gets.to_i

digits = 0
18.times do |i|
  2.times do
    digits += 1
    factorial = i + 1
    target_num -= ("9"*factorial).to_i
    if target_num < 0
      break
    end
  end
end

p digits
