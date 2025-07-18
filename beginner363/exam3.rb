nums = gets.chomp.split(" ")
# 文字列の長さ
char_lenght = nums[0].to_i
# 回文の長さ
palindrome_lenght = nums[1].to_i

chars = gets.strip

char_combies = chars.split('').permutation.to_a.uniq!
# p char_combies

# not_palindrome_num = 0
# char_combies.each do |char_combi|
#   not_palindrome = true
#   while char_combi.length >= palindrome_lenght
#     str = char_combi[0..palindrome_lenght-1].join

#     # p "char_combi: #{char_combi}"
#     # p "str: #{str}"
#     # p "str.reverse: #{str.reverse}"

#     if str == str.reverse
#       not_palindrome = false
#       break
#     end
#     char_combi.delete_at(0)
#   end
#   not_palindrome_num += 1 if not_palindrome
# end

# puts not_palindrome_num
