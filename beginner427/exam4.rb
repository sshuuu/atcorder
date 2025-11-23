test_num = gets.chomp.to_i

results = []
test_num.times do
  bit_len = gets.chomp.to_i
  bits = gets.chomp

  # bitsを2分割
  left = bits[0...bit_len / 2]
  right = bits[bit_len / 2...bit_len]

  # 全て0に変換する場合
  change_count_to_0 = 0

  # 末尾の0を削除する
  left.sub(/0+$/, "").each_char.with_index do |char, i|
    if char == "1"
      change_count_to_0 += 1
    else
      change_count_to_0 += 2
    end
  end

  right.sub(/^0+/, "").reverse.each_char.with_index do |char, i|
    if char == "1"
      change_count_to_0 += 1
    else
      change_count_to_0 += 2
    end
  end

  # 全て1に変換する場合
  change_count_to_1 = 0
  left.sub(/1+$/, "").each_char.with_index do |char, i|
    if char == "0"
      change_count_to_1 += 1
    else
      change_count_to_1 += 2
    end
  end

  right.sub(/^1+/, "").reverse.each_char.with_index do |char, i|
    if char == "0"
      change_count_to_1 += 1
    else
      change_count_to_1 += 2
    end
  end
  results << [change_count_to_0, change_count_to_1].min
end

puts results
