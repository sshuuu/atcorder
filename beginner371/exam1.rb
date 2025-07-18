ab, ac, bc = gets.split

if ab == "<" # bの方が年上
  if bc == "<" # cが長男
    puts "B"
  else # bが長男
    if ac == "<" # cが次男
      puts "C"
    else # aが次男
      puts "A"
    end
  end
else # aの方が年上
  if ac == "<" # cが長男
    puts "A"
  else # aが長男
    if bc == "<" # cが次男
      puts "C"
    else # bが次男
      puts "B"
    end
  end
end
