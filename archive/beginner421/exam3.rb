char_len_half = gets.chomp.to_i
str = gets.chomp

a_indices = []
b_indices = []
str.chars.each_with_index do |c, i|
    if c == "A"
        a_indices << i
    else
        b_indices << i
    end
end

a_move_count = 0
b_move_count = 0

a_indices.each_with_index do |a_index, i|
    correct_position = i*2
    a_move_count += (a_index - correct_position).abs
end

b_indices.each_with_index do |b_index, i|
    correct_position = i*2
    b_move_count += (b_index - correct_position).abs
end

puts [a_move_count, b_move_count].min
