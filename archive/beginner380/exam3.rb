bit_length, connect_order = gets.chomp.split(" ").map(&:to_i)
bit_str = gets.chomp

zero_one_split = bit_str.split("01", -1)
# p zero_one_split
# if bit_str[-2, 2] == "01"
#   zero_one_split << ""
# end

if zero_one_split[0][0] == "1"
  connect_order -= 1
end

one_count = zero_one_split[connect_order].to_s.count("1")
zero_one_split[connect_order].to_s.delete!("1")

# k-1番目の先頭の文字列に、k番目の文字列から削除した1の分を追加する
zero_one_split[connect_order-1].to_s.prepend("1" * one_count)

# 01でスプリットした分文字列を追加する処理
# k-1番目の文字列の先頭に1を追加し、k番目の文字列の最後の0を追加する
zero_one_split[connect_order-1].to_s.prepend("1")
zero_one_split[connect_order].to_s.concat("0")

# 変更を加えた箇所を結合しておく
connect_target = zero_one_split[connect_order-1].to_s + zero_one_split[connect_order].to_s

# 変更を加えた箇所を上書きする
zero_one_split[connect_order-1] = connect_target
zero_one_split.delete_at(connect_order)

puts zero_one_split.join("01")
