operation_num = gets.chomp.to_i

is_logined = false
error_count = 0

operation_num.times do
  operation = gets.chomp
  if operation == "login"
    is_logined = true
  elsif operation == "logout"
    is_logined = false
  elsif operation == "private"
    unless is_logined
      error_count += 1
    end
  end
end

puts error_count
