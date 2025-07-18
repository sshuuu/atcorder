len = gets.to_i

tastes = []
len.times do
  tastes << gets.chomp
end

sweet_flg = false
eat_count = 0

tastes.each do |taste|
  eat_count += 1

  # 全部食べたら終了
  break if tastes.length == eat_count

  if taste == "sweet"
    if sweet_flg
      puts "No"
      return
    end
    sweet_flg = true
  else
    sweet_flg = false
  end
end

puts "Yes"
