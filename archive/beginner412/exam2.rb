S = gets.chomp
T = gets.chomp

S.each_char.with_index do |s, i|
  # Skip the first element
  if i == 0
    next
  end

  # 大文字判定
  m = s.match(/^[A-Z]+$/)

  if m
    target_char = S[i-1]
    # target_charがTの中に存在するかチェック
    unless T.include?(target_char)
      puts "No"
      exit
    end
  end
end


puts "Yes"

