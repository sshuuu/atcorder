str = gets

str.each_char do |s|
  if s == "R"
    puts "Yes"
    return
  elsif s == "M"
    puts "No"
    return
  end
  next
end
