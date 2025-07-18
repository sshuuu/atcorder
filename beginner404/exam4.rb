zoo_len, like_animal_count = gets.chomp.split.map(&:to_i)
zoo_prices = gets.chomp.split.map(&:to_i)

animal_positions = Array.new(zoo_len) { [] }
like_animal_count.times do |animal_index|
  _zoo_count, *zoo_indexes = gets.chomp.split.map(&:to_i)
  zoo_indexes.each do |zoo_index|
    animal_positions[zoo_index - 1] << animal_index
  end
end

