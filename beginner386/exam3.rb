operation_count = gets.chomp.to_i
before_str = gets.chomp
after_str = gets.chomp

OPERATION_TYPE_CHANGE = 1
OPERATION_TYPE_ADDITION = 2
OPERATION_TYPE_DELETION = 3

# 一致している場合
if before_str == after_str
  puts "Yes"
  exit
end

operation_type = 0
if before_str.length == after_str.length
  operation_type = OPERATION_TYPE_CHANGE
elsif before_str.length > after_str.length
  operation_type = OPERATION_TYPE_ADDITION
else
  operation_type = OPERATION_TYPE_DELETION
end

tmp_before_str = before_str.dup
tmp_after_str = after_str.dup

target_index = 0
while tmp_before_str.length != 1
  start_index = 0
  end_index = ((tmp_before_str.length / 2.0).ceil - 1)

  # 前半部分が一致しているのなら、後半部分を比較したいので、前半部分を削除
  if tmp_before_str[start_index..end_index] == tmp_after_str[start_index..end_index]
    tmp_before_str = tmp_before_str[(end_index+1)..-1]
    tmp_after_str = tmp_after_str[(end_index+1)..-1]
    target_index += (end_index + 1)
  else
    # 前半部分が一致していないのなら、後半部分を比較する必要がないので、後半部分を削除
    tmp_before_str = tmp_before_str[start_index..end_index]
    tmp_after_str = tmp_after_str[start_index..end_index]
  end
end

if operation_type == OPERATION_TYPE_CHANGE
  after_str[target_index] = before_str[target_index]
elsif operation_type == OPERATION_TYPE_ADDITION
  after_str.insert(target_index, before_str[target_index])
else
  # 今まで比較した箇所が全て一致している場合、削除する箇所は最後の文字
  if before_str[target_index] == after_str[target_index]
    after_str.slice!(-1)
  else
    after_str.slice!(target_index)
  end
end

if before_str == after_str
  puts "Yes"
else
  puts "No"
end


# puts "target_index: #{target_index}"
# puts "operation_type: #{operation_type}"
# puts "tmp_before_str: #{tmp_before_str}"
# puts "tmp_after_str: #{tmp_after_str}"
# puts "before_str: #{before_str}"
# puts "after_str: #{after_str}"

