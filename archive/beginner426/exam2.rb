string = gets.chomp

char_count = Hash.new(0)
string.each_char do |char|
  char_count[char] += 1
end

puts char_count.rassoc(1).first
