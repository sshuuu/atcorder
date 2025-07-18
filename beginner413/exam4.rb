testcase_len = gets.chomp.to_i

results = []

testcase_len.times do
  num_len = gets.chomp.to_i
  nums = gets.chomp.split.map(&:to_r)
  nums.sort_by!(&:abs)

  # 一つ目の要素は抜き出しておく
  first = nums.shift
  second = nums[0]
  rat = Rational(first, second)

  is_geometric_progression = true
  nums.each_cons(2) do |a, b|
    if Rational(a, b) == rat
      next
    else
      results << "No"
      is_geometric_progression = false
      break
    end
  end

  if is_geometric_progression
    results << "Yes"
  end
end

puts results
