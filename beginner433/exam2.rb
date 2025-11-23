person_num = gets.chomp.to_i
heights = gets.chomp.split.map(&:to_i)

results = []
heights.each_with_index do |height, index|
  before_index = index - 1
  not_found = true

  while before_index >= 0
    if heights[before_index] > height
      results << before_index + 1
      not_found = false
      break
    end
    before_index -= 1
  end

  if not_found
    results << -1
  end
end

puts results
