len = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)
puts "nums: #{nums}"

1.upto(len) do |i|
  combinations = nums.combination(i).to_a
  combinations.each do |combination|
    # 2進数変換して、排他的論理和で計算する
    xor = combination.inject(0){|result, num| result ^ num}
    puts "combination: #{combination}, xor: #{xor}"
    
  end
end
