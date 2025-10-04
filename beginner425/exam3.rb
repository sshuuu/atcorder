num_len, query_len = gets.chomp.split(" ").map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i)

prefix_sum = [0]
nums.each { |num| prefix_sum << prefix_sum[-1] + num }

start_pos = 0
query_len.times do
  q = gets.chomp.split(" ").map(&:to_i)
  query_type = q[0]

  case query_type
  when 1
    start_pos = (start_pos + q[1]) % num_len
  when 2
    cur_start_pos = (start_pos + (q[1] - 1)) % num_len
    cur_end_pos = (start_pos + (q[2] - 1)) % num_len
    if cur_start_pos <= cur_end_pos
      puts prefix_sum[cur_end_pos + 1] - prefix_sum[cur_start_pos]
    else
      puts (prefix_sum[num_len] - prefix_sum[cur_start_pos]) + prefix_sum[cur_end_pos + 1]
    end
  end
end
