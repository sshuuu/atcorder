card_num, target_num = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)

puts cards[(card_num-target_num)..-1] + cards[0..(card_num-target_num-1)]
