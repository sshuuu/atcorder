w, b = gets.chomp.split.map(&:to_i)

balloon_count_f = (w * 1000.0) / b.to_f
balloon_count = balloon_count_f.ceil

if balloon_count_f == balloon_count
  puts balloon_count + 1
else
  puts balloon_count
end

