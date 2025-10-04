valid_chars = gets
target_chars = gets
chars_len = valid_chars.length

conversion_processes = []

# まずは先頭から比較して、文字が異なっているかつtargetの方が辞書順で小さければ変換する
chars_len.times do |i|
  next if valid_chars[i] == target_chars[i]
  # 変換実行
  if valid_chars[i] > target_chars[i]
    valid_chars[i] = target_chars[i]
    conversion_processes.push(valid_chars.dup)
  end
end

# 続いて、末尾から比較して文字が異なっていたら変換する
chars_len.times do |i|
  comparison_index = valid_chars.length - i - 1
  next if valid_chars[comparison_index] == target_chars[comparison_index]
  # 変換実行
  valid_chars[comparison_index] = target_chars[comparison_index]
  conversion_processes.push(valid_chars.dup)
end

puts conversion_processes.length
puts conversion_processes
