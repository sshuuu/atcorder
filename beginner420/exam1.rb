current_month, add_month = gets.chomp.split(" ").map(&:to_i)

new_month = (current_month + add_month - 1) % 12 + 1
puts new_month