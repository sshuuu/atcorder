test_case_num = gets.chomp.to_i

result = []

test_case_num.times do
  domino_num = gets.chomp.to_i
  dominoes = gets.chomp.split.map(&:to_i)
  first_domino = dominoes[0]
  last_domino = dominoes[-1]

  dominoes.sort!.reverse!

  total_domino_count = 1
  current_domino_power = first_domino
  while true
    next_domino_power = current_domino_power * 2
    target_domino = dominoes.find { |domino| domino <= next_domino_power }

    total_domino_count += 1
    # 最後のドミノを倒した
    if target_domino >= last_domino
      result << total_domino_count
      break
    end

    # 倒せるドミノが見つからない
    if target_domino <= current_domino_power
      result << -1
      break
    end



    current_domino_power = target_domino
  end
end

puts result
