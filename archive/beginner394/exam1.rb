str = gets.chomp.split('')
result = ""

str.each do |s|
  if s == "2"
    result << s
  end
end

puts result
