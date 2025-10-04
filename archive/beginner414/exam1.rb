listener_num, start_time, end_time = gets.chomp.split(" ").map(&:to_i)

full_time_num = 0
listener_num.times do
  listener_start, listener_end = gets.chomp.split(" ").map(&:to_i)

  if (start_time >= listener_start && end_time <= listener_end)
    full_time_num += 1
  end
end

puts full_time_num
