str = gets.chomp

loop = 100
while loop > 0
  str.gsub!(/\(\)|\<\>|\[\]/, "")
  loop -= 1
end

# ここからは、対応する括弧が正しいかを確認する
matched = str.match(/\(\]|\(\>|\<\]|\<\)|\[\)|\[\>/)
if matched
  puts "No"
  return
end

# ここからは、対応する括弧の数が正しいかを確認する
if str.count("(") != str.count(")")
  puts "No"
  return
end

if str.count("<") != str.count(">")
  puts "No"
  return
end

if str.count("[") != str.count("]")
  puts "No"
  return
end

# ここからは、対応する括弧が正しい順番であるかを確認する
if str.index(")").to_i < str.index("(").to_i
  puts "No"
  return
end

if str.rindex(")").to_i < str.rindex("(").to_i
  puts "No"
  return
end

if str.index(">").to_i < str.index("<").to_i
  puts "No"
  return
end

if str.rindex(">").to_i < str.rindex("<").to_i
  puts "No"
  return
end

if str.index("]").to_i < str.index("[").to_i
  puts "No"
  return
end

if str.rindex("]").to_i < str.rindex("[").to_i
  puts "No"
  return
end

puts "Yes"
