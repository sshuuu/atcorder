test_case_num, m = gets.chomp.split(" ").map(&:to_i)

factorial_sums = [1]
(1..5000).each do |i|
  factorial_sums[i] = factorial_sums[i - 1] * i
end

test_case_num.times do
  num_len = gets.chomp.to_i
  nums = gets.chomp.split(" ").map(&:to_i)

  molecule = 1
  nums.each do |num|
    molecule *= factorial_sums[num]
  end

  denominator = factorial_sums[nums.sum]

  puts (denominator / molecule) % m
end

