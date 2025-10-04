push_count, interval_sec = gets.chomp.split(" ").map(&:to_i)
push_times = gets.chomp.split(" ").map(&:to_i)

lash_push_time = 0
result_count = 0

# 初回
lash_push_time = push_times.shift
result_count += 1

push_times.each do |push_time|
  if push_time - lash_push_time >= interval_sec
    result_count += 1
    lash_push_time = push_time
  end
end

puts result_count
