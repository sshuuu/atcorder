nums = gets.chomp.split(" ")
all_person_num = nums[0].to_i
target_lenght = nums[1].to_i
target_person_num = nums[2].to_i

hear_lengths = gets.chomp.split(" ").map(&:to_i)
hear_lengths.sort!.reverse!
threshold_hear_length = hear_lengths[target_person_num-1]

if threshold_hear_length >= target_lenght
  puts 0
  return
end

result_day = target_lenght - threshold_hear_length
puts result_day
