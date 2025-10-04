len = gets.chomp.to_i
strs = Array.new(len, "")

len.times do
  str = gets.chomp
  strs[str.length - 1] = str
end

result = ""
strs.each do |str|
  if str != "" && str != nil
    result << str
  end
end

puts result
