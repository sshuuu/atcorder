total_teeth_num, need_teeth_num = gets.chomp.split(" ").map(&:to_i)
teeth_status = gets.chomp.split("")
eat_num = 0

continuous_health_teeth_num = 0
total_teeth_num.times.each do |i|
  continuous_health_teeth_num = 0

  need_teeth_num.times do |j|
    if teeth_status[i+j] == "O"
      teeth_status[i+j] = "X"
      continuous_health_teeth_num += 1
    else
      break
    end
  end
  if continuous_health_teeth_num == need_teeth_num
    eat_num += 1
  end
end

puts eat_num
