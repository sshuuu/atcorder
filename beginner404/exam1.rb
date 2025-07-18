string = gets.chomp

"abcdefghijklmnopqrstuvwxyz".each_char do |char|
  if string.include?(char)
    next
  end
  puts char
  exit
end



