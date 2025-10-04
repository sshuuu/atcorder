house_len, baby_len = gets.split.map(&:to_i)

house_male_nums = Array.new(house_len+1, 0)
results = []

baby_len.times do
  house_index, gender = gets.split
  house_index = house_index.to_i

  if gender == "M"
    house_male_nums[house_index] += 1
    if house_male_nums[house_index] == 1
      results << "Yes"
    else
      results << "No"
    end
  else
    results << "No"
  end
end

puts results
