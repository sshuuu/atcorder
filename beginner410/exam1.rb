num = gets.chomp.to_i
ages = gets.chomp.split.map(&:to_i)
target_age = gets.chomp.to_i

puts ages.count { |age| age >= target_age }

