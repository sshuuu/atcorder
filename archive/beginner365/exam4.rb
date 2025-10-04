def self_rps(e_rps, pre_s_rps)
  case e_rps
  when "R"
    if pre_s_rps == "P"
      return "R"
    else
      return "P"
    end
  when "P"
    if pre_s_rps == "S"
      return "P"
    else
      return "S"
    end
  when "S"
    if pre_s_rps == "R"
      return "S"
    else
      return "R"
    end
  end
end

len = gets.to_i
e_rps_es = gets.chomp.split("")

win_count = 0
s_pre_rps = ""

e_rps_es.each do |e_rps|
  cur_s_rps = self_rps(e_rps, s_pre_rps)
  if e_rps != cur_s_rps  
    win_count += 1
  end
  s_pre_rps = cur_s_rps
end

puts win_count
