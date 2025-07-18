len, bugdet = gets.split.map(&:to_i)
costs = gets.split.map(&:to_i)
costs.sort!.reverse!

dp_table = Array.new(bugdet + 1) { Array.new(len, 0) }

is_infinity = true
subsidy = 0

if costs[0] > bugdet
  is_infinity = false
end

(1..bugdet).to_a.reverse.each do |i|
  is_enough = true

  (0...len).each do |j|
    dp_table[i][j] = [costs[j], i].min
    if dp_table[i].sum > bugdet
      is_enough = false
      break
    end
  end

  if is_enough
    subsidy = i
    if is_infinity && subsidy == bugdet
      subsidy = "infinity"
    end
    break
  end
end

puts subsidy
