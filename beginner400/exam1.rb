tate = gets.chomp.to_i

yoko = 400 / tate

if tate * yoko == 400
  puts yoko
else
  puts "-1"
end
