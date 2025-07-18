str = gets.chomp

while true
  # 実行時間超過を回避するため、gsubとsubを交互に実行する
  str = str.gsub(/WA/, "AC")

  matched = str.match(/W+A/)
  if matched.nil?
    break
  end

  replace_str = "A" + "C" * (matched[0].length-1)
  str = str.sub(matched[0], replace_str)
end

puts str

