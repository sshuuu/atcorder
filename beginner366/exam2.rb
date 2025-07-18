word_count = gets.to_i

words = []
word_count.times do
  words << gets.chomp
end
# wordsを逆順にする
words = words.reverse

vertical_words = []

max_char_len = words.max_by(&:length).length
max_char_len.times do |i|
  vertical_word = ''
  words.each do |word|
    vertical_word += word[i] || '*'
  end
  # 末尾の*を削除
  while vertical_word.end_with?('*')
    vertical_word.delete_suffix!('*')    
  end
  
  vertical_words << vertical_word
end

puts vertical_words
