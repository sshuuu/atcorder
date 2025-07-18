str_count = gets.chomp.to_i

strs = []
str_count.times do
  strs << gets.chomp
end

cat_strs = []
strs.permutation(2) do |e|
  cat_strs << e.join
end

puts cat_strs.uniq.length
