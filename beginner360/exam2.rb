strs = gets.chomp.split(" ")
s = strs[0]
t = strs[1]

split_s = ""
(s.length - 1).times do |i|
  w = i + 1
  split_s = s.scan(/.{1,#{w}}/)

  w.times do |j|
    c = j
    result_t = ""
    valid_finish = true
    split_s.each_with_index do |ss, index|
      target_s = ss.slice(c)
      if target_s != nil && target_s != t[index]
        valid_finish = false
        break
      end
      if target_s != nil
        result_t += target_s
      end
    end

    if result_t == t && valid_finish
      puts "Yes"
      return
    end
  end
end

puts "No"
