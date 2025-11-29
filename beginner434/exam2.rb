bird_num, bird_kind_len = gets.chomp.split.map(&:to_i)

birds = Array.new(bird_kind_len) { Array.new(0) }

bird_num.times do
  kind, weight = gets.chomp.split.map(&:to_i)
  birds[kind - 1] << weight
end

birds.each do |weights|
  puts weights.sum.to_f / weights.length
end
