room_len = gets.chomp.to_i
names = []
room_len.times do |i|
  names << gets.chomp
end

room_num, des_name = gets.chomp.split(" ")

if names[room_num.to_i - 1] == des_name
  puts "Yes"
else
  puts "No"
end
