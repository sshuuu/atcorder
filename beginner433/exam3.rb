chars = gets.chomp

first_char = chars[0]
chars = chars[1..-1]

count = 0
before_num = first_char
sequence_count = 1

match_number = nil
match_number_sequence = 0

chars.each_char do |char|
  if char == before_num
    sequence_count += 1
    if match_number && match_number_sequence >= sequence_count
      count += 1
    end
  elsif char == (before_num.to_i + 1).to_s
    match_number = before_num
    match_number_sequence = sequence_count
    count += 1

    before_num = char
    sequence_count = 1
  else
    match_number = nil
    match_number_sequence = 0

    sequence_count = 1
    before_num = char
  end
end

puts count