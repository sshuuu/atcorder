string = gets.split("")

result = ""
string.each do |cher|
  if ("A".."Z").include?(cher)
    result << cher
  end
end

puts result
