target_num = gets.chomp.to_i

results = []
MAX_LOOP = 20
current_loop = 0
while MAX_LOOP >= current_loop && target_num != 0
  current_loop += 1
  log = Math.log(target_num, 3)
  log_floor = log.floor

  cul_num = 3 ** log_floor
  
  results << log_floor
  target_num -= cul_num
end

puts results.size
puts results.join(' ')
