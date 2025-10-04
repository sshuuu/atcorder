char_length, query_length = gets.split(' ').map(&:to_i)
chars = gets.chomp

# ABCの数を数える
abc_count = chars.scan(/ABC/).count

query_length.times do
  pos, after_char = gets.split(' ')
  pos = pos.to_i

  before_char = chars[pos - 1]

  pre_pos_char = chars[pos - 2]
  prepre_pos_char = chars[pos - 3]
  next_pos_char = chars[pos]
  nexnext_pos_char = chars[pos + 1]

  chars[pos - 1] = after_char

  # 変更前と変更後が同じ文字の場合は何もしない
  if before_char != after_char
    # ABCの数を減らす処理
    if before_char == 'A' && after_char != 'A'
      if next_pos_char == 'B' && nexnext_pos_char == 'C'
        abc_count -= 1      
      end
    elsif before_char == 'B' && after_char != 'B' && pos > 1
      if next_pos_char == 'C' && pre_pos_char == 'A'
        abc_count -= 1
      end
    elsif before_char == 'C' && after_char != 'C' && pos > 2
      if pre_pos_char == 'B' && prepre_pos_char == 'A'
        abc_count -= 1
      end
    end

    # ABCの数を増やす処理
    if before_char != 'A' && after_char == 'A'
      if next_pos_char == 'B' && nexnext_pos_char == 'C'
        abc_count += 1
      end
    elsif before_char != 'B' && after_char == 'B' && pos > 1
      if pre_pos_char == 'A' && next_pos_char == 'C'
        abc_count += 1
      end
    elsif before_char != 'C' && after_char == 'C' && pos > 2
      if pre_pos_char == 'B' && prepre_pos_char == 'A'
        abc_count += 1
      end
    end
  end

  puts abc_count
end

