s_size, t_size = gets.chomp.split(" ").map(&:to_i)

s = []
t = []

s_size.times do
  s << gets.chomp.split("")
end

t_size.times do
  t << gets.chomp.split("")
end

s.each.with_index do |s_row, s_row_i|
  s_row.each_cons(t.first.length).with_index do |s_row_parts, s_row_parts_i|
    if s_row_parts.join == t.first.join
      valid = true
      t.each.with_index do |t_row, t_row_i|
        # 一行目は比較済みなのでスキップ
        if t_row_i == 0
          next
        end

        unless s[s_row_i + t_row_i][s_row_parts_i..(s_row_parts_i + t_row.length-1)].join == t_row.join
          valid = false
          break
        end
      end
      if valid
        puts "#{s_row_i + 1} #{s_row_parts_i + 1}"
        return
      end
    end
  end
end
