length = gets.to_i
periodic_table = Array.new(length+1) { Array.new }

length.times do |i|
  periodics = gets.split.map(&:to_i)
  # 空の要素を追加しておく
  periodic_table[i + 1].push(nil)
  periodics.each.with_index(1) do |periodic|
    periodic_table[i + 1].push(periodic)
  end
end

# 初めは1からスタート
combined_periodic = 1
length.times do |i|
  combine_order = i + 1

  combine_first = [combined_periodic, combine_order].max
  combine_second = [combined_periodic, combine_order].min

  combined_periodic = periodic_table[combine_first][combine_second]
end

puts combined_periodic
