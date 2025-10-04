str = gets.chomp.split('')

cnt = 0

str.each.with_index do |c, i|
  if c == 'A'
    1.upto(str.length) do |gap|
      if str[i+gap] == 'B' && str[i+(gap*2)] == 'C'
        cnt += 1
      end
    end
  end
end

puts cnt
